import json

from django.db.models import ExpressionWrapper, F, DurationField, Q
from django.db.models.functions import Now
from django.http import HttpResponse
from django.shortcuts import render
from django.template import Template, RequestContext
from django.views.decorators.csrf import csrf_exempt

# Create your views here.
from website import models


def web_index(request):
    return render(request, 'website/homepage.html')

def home(request):
    return render(request, 'home.html')


@csrf_exempt
def volunteer_tasks(request):

    all_tasks = models.Task.objects.all()
    all_skills = models.Predefined_Skill.objects.all()
    all_traits = models.Predefined_Task_Trait.objects.all()

    if request.body:
        filter = json.loads(request.body)
        filtered_skills = list(map(int, filter['skills']))
        no_skills_ok = -1 in filtered_skills

        filtered_traits = list(map(int, filter['traits']))
        no_traits_ok = -1 in filtered_traits

        included_by_skills = []
        included_by_traits = []
        filtered_category = int(filter['category'])

        for task in all_tasks:
            if filtered_category >= 0 and task.category.code != filtered_category:
                continue

            if (task.task_needed_skill_set.filter(skill_code_id__in=filtered_skills).count()>0
                    or (no_skills_ok and task.task_needed_skill_set.count()==0)):
                included_by_skills.append(task.id)
            if (task.predefined_trait_of_task_set.filter(trait_code_id__in=filtered_traits).count()>0
                    or (no_traits_ok and task.predefined_trait_of_task_set.count()==0)):
                included_by_traits.append(task.id)

        total_include = list(set(included_by_skills) & set(included_by_traits))
        all_tasks = all_tasks.filter(id__in=total_include)

        sort_option = int(filter['sorting'])
        if sort_option==1:
            all_tasks = all_tasks.annotate(
                time_difference=ExpressionWrapper(F('datetime_planned') - Now(),output_field=DurationField())
            ).order_by('time_difference')
        else:
            all_tasks = all_tasks.order_by('datetime_planned')

    tuples = []
    for task in all_tasks:
        record = (models.Individual_Record.objects.using('mockstatedb')
                                                  .filter(document_number=task.asking_individual.document_number, document_type=task.asking_individual.document_type))[0]
        tuples.append((task, record))

    context = {
        'tuples': tuples,
        'categories': models.Task_Category.objects.all(),
        'all_skills': all_skills,
        'all_traits': all_traits
    }
    if request.body:
        ajax_template = Template("{% for t, r in tuples %} {% include 'partial/task.html' with task=t record=r %} {% endfor %}")
        return HttpResponse(ajax_template.render(RequestContext(request, context)))

    return render(request, 'volunteer_tasks.html', context)

def request_help(request):
    return render(request, 'request_help.html')

def important_info(request):
    return render(request, 'important_info.html')

def about(request):
    return render(request, 'about.html')

def how_it_works(request):
    return render(request, 'how_it_works.html')

def faq(request):
    return render(request, 'faq.html')

def profile(request):
    return render(request, 'profile.html')

def notifications(request):
    return render(request, 'notifications.html')
