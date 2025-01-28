function changeNearbyText(dropdownId, nearbyTextId) 
{   
    labels = document.getElementById(dropdownId).getElementsByTagName('label');
    checkedBoxes = getArrayOfCheckedBoxes(dropdownId);
    nearbyText = document.getElementById(nearbyTextId);

    if(checkedBoxes.length == labels.length) {
        nearbyText.innerHTML = "будь-які";
    }
    else if(checkedBoxes.length>1) {
        nearbyText.innerHTML = checkedBoxes.length + '/' + labels.length + " вибрано";
    }
    else {
        neededLabel = Array.from(labels).filter(lbl => lbl.getAttribute('for')==checkedBoxes[0].id)[0];
        nearbyText.innerHTML = neededLabel.innerHTML; 
    }
}

function initSelfClosingDropdown(dropdownId) {

    window.addEventListener('mouseup',function(event) {
        var dd = document.getElementById(dropdownId);
        
        if(!(event.target.closest("#"+dropdownId))){
            dd.style.visibility = 'hidden';
        }
  });  
}

function placeDropdown(buttonId, dropdownId, parentId) {

    parentRect = document.getElementById(parentId).getBoundingClientRect();
    buttonRect = document.getElementById(buttonId).getBoundingClientRect();

    leftDiff = buttonRect.left - parentRect.left;
    dropdownElement = document.getElementById(dropdownId);
    dropdownElement.style.left = leftDiff+'px';
    dropdownElement.style.visibility = 'visible';
}

function getArrayOfCheckedBoxes(containerId) {
    return Array.from(document.getElementById(containerId).getElementsByTagName('input'))
            .filter((c) => c.checked);
} 

function preventFromNoSelection(checkbox, parentId) {

    if(checkbox.checked) {
        return;
    }
    allCheckboxes = Array.from(document.getElementById(parentId).getElementsByTagName('input'));
    checks = allCheckboxes.filter(c => c.checked).length;

    if(checks > 0) { return; }

    allCheckboxes[0].checked = true;
}

function changeFilters() {

    let xhr = new XMLHttpRequest();
    xhr.open('POST', '/website/volunteer-tasks/', true);
    xhr.setRequestHeader('Accept', 'application/json'); 

    skill_ids = getArrayOfCheckedBoxes('skills_picker').map(x => x.value);
    trait_ids = getArrayOfCheckedBoxes('traits_picker').map(x => x.value);
    const jsonData = JSON.stringify({
            skills : skill_ids, 
            traits : trait_ids,
            category : document.getElementById('category-dropdown').value,
            sorting: document.getElementById('sort-dropdown').value
        }
    ); 

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200)

            document.getElementById("tasks-here").innerHTML = xhr.responseText;
        }
    xhr.send(jsonData);
}