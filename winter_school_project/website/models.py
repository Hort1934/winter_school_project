from django.db import models


# Create your models here.

# головна БД
# predefined values tables
class Predefined_Skill(models.Model):
    code = models.PositiveSmallIntegerField(primary_key=True)
    name = models.CharField(max_length=255)

class Predefined_Task_Trait(models.Model):
    code = models.PositiveSmallIntegerField(primary_key=True)
    name = models.CharField(max_length=255)

class Task_Category(models.Model):
    code = models.PositiveSmallIntegerField(primary_key=True)
    name = models.CharField(max_length=255)
    min_points = models.IntegerField()
    max_points = models.IntegerField()

# -------


# особи та те що з ними пов'язане
class Individual(models.Model):
    document_number = models.TextField()
    document_type = models.PositiveSmallIntegerField()
    description = models.TextField()
    location_url = models.URLField(null=True)
    address_text = models.TextField(null=True)
    social_points = models.IntegerField(default=0)

class Individual_Phone(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=15)

class Individual_Social(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    nickname = models.TextField()
    social_media_type = models.PositiveSmallIntegerField()

class Individual_Predefined_Skill(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    skill_code = models.ForeignKey(Predefined_Skill, on_delete=models.CASCADE)

class Individual_Custom_Skill(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    text = models.CharField(max_length=255)

class Vulnerability_Proof(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    vulnerability_type = models.PositiveSmallIntegerField()
    proof_document_number = models.TextField()

class Health_Vulnerability_Proof(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    med_document_url = models.URLField(null=True)
# -------

# завдання та те що з ними пов'язане
class Task(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    asking_individual = models.ForeignKey(Individual, on_delete=models.SET_NULL, null=True)
    location_url = models.URLField(null=True)
    address_text = models.TextField(null=True)
    datetime_created = models.DateTimeField()
    datetime_planned = models.DateTimeField()
    category = models.ForeignKey(Task_Category, on_delete=models.SET_NULL, null=True)
    status = models.PositiveSmallIntegerField()
    points_given = models.IntegerField(default=10)
    people_needed = models.PositiveSmallIntegerField(default=1)

class Predefined_Trait_Of_Task(models.Model):
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    trait_code = models.ForeignKey(Predefined_Task_Trait, on_delete=models.CASCADE)

class Task_Custom_Trait(models.Model):
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    text = models.CharField(max_length=255)

class Task_Needed_Skill(models.Model):
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    skill_code = models.ForeignKey(Predefined_Skill, on_delete=models.CASCADE)

class Volunteering(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    is_accepted = models.BooleanField(default=False)
# -------

# організації та те що з ними пов'язане
class Organization(models.Model):
    document_number = models.TextField()
    document_type = models.PositiveSmallIntegerField()
    unofficial_name = models.CharField(max_length=255)
    description = models.TextField()
    logo_url = models.URLField(null=True)
    email = models.EmailField()

class Organization_Phone(models.Model):
    organization = models.ForeignKey(Organization, on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=15)

class Organization_Social(models.Model):
    organization = models.ForeignKey(Organization, on_delete=models.CASCADE)
    nickname = models.TextField()
    social_media_type = models.PositiveSmallIntegerField()

class Organization_Office(models.Model):
    organization = models.ForeignKey(Organization, on_delete=models.CASCADE)
    address_text = models.TextField()
    location_url = models.URLField(null=True)
# -------

# пільги та те що з ними пов'язане
class Benefit(models.Model):
    name = models.CharField(max_length=255)
    organization = models.ForeignKey(Organization, on_delete=models.CASCADE)
    points_price = models.IntegerField()
    days_duration = models.PositiveSmallIntegerField()
    last_day_offered = models.DateField()
    description = models.TextField()

class Benefits_Acquisition(models.Model):
    individual = models.ForeignKey(Individual, on_delete=models.CASCADE)
    benefit = models.ForeignKey(Benefit, on_delete=models.CASCADE)
    date_valid_since = models.DateField()

# -------

# "державна" БД
class Individual_Record(models.Model):
    document_number = models.TextField()
    document_type = models.PositiveSmallIntegerField()
    photo_url = models.URLField(null=True)
    full_name = models.CharField(max_length=255)
    birth_date = models.DateField()

class Organization_Record(models.Model):
    document_number = models.TextField()
    document_type = models.PositiveSmallIntegerField()
    official_name = models.CharField(max_length=255)
