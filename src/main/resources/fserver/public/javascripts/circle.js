var c = document.getElementById('canvas');
var district = document.getElementById('infotitle');
var disease = document.getElementById('disease_select');
var year = document.getElementsByClassName("year-now")[0].textContent;
var ctx = c.getContext('2d');
var x = 270;
var y = 253;
// / 1580 * c.width   / 770 * c.height

var abs_child, rel_child, isPredicted = false, predicted;

$.get("http://http://5.53.125.224:8080/districts", "district=" + district.textContent.toLowerCase() +
    "&disease=" + disease.options[disease.selectedIndex].text +
    "&year=" + year,
    function(data, status) {
        console.log(status);
        var info = getData(data);
        predicted = info.yearsPredicted;

        for (let i = 0; i < info.data.length; i++) {
            if (year.localeCompare(info.data[i].diseaseID.year) === 0) {
                if(predicted.find(function(element) {
                    return element.toString().localeCompare(year) === 0;
                })){
                    isPredicted = true;
                }
                console.log(isPredicted)
                valuesCircle.value = info.data[i].abs;
                percentCircle.percent = info.data[i].rel;
                abs_child = info.data[i].abs_child;
                rel_child = info.data[i].rel_child;
                break;
            }
        }
        loop();
    });

function getData(data) {
    return typeof data === "string" ? JSON.parse(data) : data;
}

var valuesCircle = new function() {
    var r = 200;
    //max value in circle #changeThis
    var maxValue = 100000;
    //displayed value in circle #changeThis
    var value = 7122;
    this.draw = function() {
        var x1 = Math.cos((-value / maxValue * 2 + 0.5) * Math.PI) * r;
        var y1 = Math.sin((-value / maxValue * 2 + 0.5) * Math.PI) * r;

        var gradient1 = ctx.createLinearGradient(
            Math.cos(0.5 * Math.PI) * r + x,
            Math.sin(0.5 * Math.PI) * r + y,
            Math.cos((-value / maxValue + 0.5) * Math.PI) * r + x,
            Math.sin((-value / maxValue + 0.5) * Math.PI) * r + y);
        gradient1.addColorStop(0, "#1A6BE4");
        gradient1.addColorStop(1, "#853D79");

        var gradient2 = ctx.createLinearGradient(
            Math.cos((-value / maxValue + 0.5) * Math.PI) * r + x,
            Math.sin((-value / maxValue + 0.5) * Math.PI) * r + y,
            x1 + x, y1 + y);
        gradient2.addColorStop(0, "#853D79");
        gradient2.addColorStop(1, "#EF1010");

        ctx.beginPath();
        ctx.arc(x, y, r, 0.5 * Math.PI, (-value / maxValue + 0.5) * Math.PI, true);
        ctx.lineWidth = 5;
        ctx.strokeStyle = gradient1;
        ctx.stroke();

        ctx.beginPath();
        ctx.arc(x, y, r, (-value / maxValue + 0.5) * Math.PI, (-value / maxValue * 2 + 0.5) * Math.PI, true);
        ctx.lineWidth = 5;
        ctx.strokeStyle = gradient2;
        ctx.stroke();

        ctx.font = "bold 18px Roboto Condensed";
        ctx.fillStyle = "#1A6BE4";
        ctx.textAlign = "center";
        ctx.textBaseline = "middle";
        ctx.fillText(maxValue, x, y + r - 25);

        ctx.fillStyle = "#EF1010";
        ctx.fillText(value, x1 * 25 / (Math.sqrt(x1 * x1 + y1 * y1)) + x + x1, y1 * 25 / (Math.sqrt(x1 * x1 + y1 * y1)) + y + y1);
    }
}

var percentCircle = new function() {
    var r = 100;
    //max value in circle #changeThis
    var maxPercent = 100;
    //displayed value in circle #changeThis
    var percent = 52.5;
    this.draw = function() {
        ctx.beginPath();
        ctx.arc(x, y, r, 0.5 * Math.PI, (-(percent * 100 / 100000) / maxPercent * 2 + 0.5) * Math.PI, true);
        ctx.lineWidth = 5;
        ctx.strokeStyle = "#1A6BE4";
        ctx.stroke();

        ctx.font = "48px Roboto Condensed";
        ctx.fillStyle = "#1A6BE4";
        ctx.textAlign = "center";
        ctx.textBaseline = "middle";
        ctx.fillText((percent * 100 / 100000) + "%", x, y);
    }
}

WebFont.load({
    google: {
        families: ['Roboto', 'Roboto Condensed'],
        text: 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ 0123456789 %/-'
    },
    active: function() {
        loop();
    }
});

function loop() {
    ctx.fillStyle = '#0B0A0A';
    ctx.fillRect(0, 0, c.width, c.height);

    if(percentCircle.percent === null){
        document.getElementById('percent').innerHTML = "-";
    } else {
        document.getElementById('percent').innerHTML = percentCircle.percent;
    }

    if(valuesCircle.value === null){
        document.getElementById('count').innerHTML = "-";
    } else {
        document.getElementById('count').innerHTML = valuesCircle.value;
    }

    if(abs_child === null){
        document.getElementById('alt-count').innerHTML = "-";
    } else {
        document.getElementById('alt-count').innerHTML = abs_child;
    }

    if(rel_child === null){
        document.getElementById('alt-percent').innerHTML = "-";
    } else {
        document.getElementById('alt-percent').innerHTML = rel_child;
    }

    if(isPredicted){
        document.getElementById('prognosed').innerText = "Результаты были спрогнозированы с использованием искуственного интеллекта";
    }

    valuesCircle.draw();
    percentCircle.draw();
}