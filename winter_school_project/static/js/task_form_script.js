function onCategorySelected(dropdownId) {
    let xhr = new XMLHttpRequest();
    xhr.open('POST', '/website/request-help/', true);
    xhr.setRequestHeader('Accept', 'application/json');

    dd = document.getElementById(dropdownId);
    const jsonData = JSON.stringify({category: dd.value});

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200)

            var range = JSON.parse(xhr.responseText);
            if(range === undefined) { return; }

            document.getElementById("min-points").innerHTML = range[0]+"&le;"
            document.getElementById("max-points").innerHTML = "&le;"+range[1];

            pointsInput = document.getElementById("social_points");
            pointsInput.setAttribute("min", range[0]);
            pointsInput.setAttribute("max", range[1]);
        }
    xhr.send(jsonData);
}