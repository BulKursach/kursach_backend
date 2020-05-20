var c = document.getElementById('canvas');
var disease = document.getElementById('disease_select');
var year = document.getElementsByClassName("year-now")[0].textContent;
var ctx = c.getContext('2d');

var positions = [150, 340, 530, 720, 910, 1100, 1290, 1480];
//values in graph (program choose 1 of them and make it like 100%) #changeThis
var values = [12405, 6535, 6866, 1754, 20102, 14504, 21489, 3477];
//percent values in graph #changeThis
var percents = [33, 40.3, 41.3, 16, 68, 117.4, 115.2, 33.1];

var predicted, isPredicted = false;

$.get("http://localhost:8080/districts/all", "disease=" + disease.options[disease.selectedIndex].text + "&year=" + year,
    function(data, status) {
        console.log(status);
        var info = getData(data);
        predicted = info.yearsPredicted;

        if(predicted.find(function(element) {
            return element.toString().localeCompare(year) === 0;
        })){
            isPredicted = true;
        }

        values[0] = info.data[6].abs;
        values[1] = info.data[1].abs;
        values[2] = info.data[2].abs;
        values[3] = info.data[3].abs;
        values[4] = info.data[8].abs;
        values[5] = info.data[4].abs;
        values[6] = info.data[5].abs;
        values[7] = info.data[7].abs;

        percents[0] = info.data[6].rel;
        percents[1] = info.data[1].rel;
        percents[2] = info.data[2].rel;
        percents[3] = info.data[3].rel;
        percents[4] = info.data[8].rel;
        percents[5] = info.data[4].rel;
        percents[6] = info.data[5].rel;
        percents[7] = info.data[7].rel;

        loop();
    });

function getData(data) {
    return typeof data === "string" ? JSON.parse(data) : data;
}

function drawBorderLines() {
    //vertical line
    ctx.beginPath();
    ctx.moveTo(67 / 1580 * c.width, 92 / 770 * c.height);
    ctx.lineTo(67 / 1580 * c.width, c.height * (1 - 133 / 770));
    ctx.lineWidth = 5;
    ctx.strokeStyle = "white";
    ctx.stroke();
    //horizontal line
    ctx.beginPath();
    ctx.moveTo(81 / 1580 * c.width, c.height * (1 - 130 / 770));
    ctx.lineTo(c.width, c.height * (1 - 130 / 770));
    ctx.lineWidth = 5;
    ctx.strokeStyle = "white";
    ctx.stroke();
}

function drawRegionsNames() {
    //regions names (text)
    writeTextForRegions('Центральный\nфедеральный\nокруг', positions[0], true);
    writeTextForRegions('Северо-Западный\nфедеральный\nокруг', positions[1], true);
    writeTextForRegions('Южный\nфедеральный\nокруг', positions[2], true);
    writeTextForRegions('Северо-Кавказский\nфедеральный\nокруг', positions[3], true);
    writeTextForRegions('Приволжский\nфедеральный\nокруг', positions[4], true);
    writeTextForRegions('Уральский\nфедеральный\nокруг', positions[5], true);
    writeTextForRegions('Сибирский\nфедеральный\nокруг', positions[6], true);
    writeTextForRegions('Дальневосточный\nфедеральный\nокруг', positions[7], true);
}

function writeTextForRegions(txt, x, invert) {
    ctx.font = "24px Roboto Condensed";
    ctx.fillStyle = "white";
    ctx.textAlign = "center";
    var lines = txt.split('\n');
    var size;
    if (invert)
        size = 770 - lines.length * 30;
    else
        size = 30;

    for (var i = lines.length - 1; i >= 0; i--)
        ctx.fillText(lines[i], x / 1580 * c.width, (size + (i * 30)) / 770 * c.height);
}

function drawLeft(max) {
    //left values
    ctx.font = "18px Roboto Condensed";
    ctx.fillStyle = "white";
    ctx.textAlign = "right";
    ctx.fillText(max, 60 / 1580 * c.width, 92 / 770 * c.height);
    ctx.fillText(parseInt(max * 2 / 3), 60 / 1580 * c.width, 273 / 770 * c.height);
    ctx.fillText(parseInt(max / 3), 60 / 1580 * c.width, 454 / 770 * c.height);
}

function drawValues() {
    //up values
    for (var i = 0; i < values.length; i++) {
        var text = values[i] + " / " + percents[i] + "%";
        ctx.font = "bold 24px Roboto Condensed";
        ctx.fillStyle = "#EF1010";
        ctx.textAlign = "right";
        ctx.fillText(values[i], (positions[i] - 5) / 1580 * c.width, 30 / 770 * c.height);
        ctx.fillStyle = "white";
        ctx.textAlign = "center";
        ctx.fillText("/", positions[i] / 1580 * c.width, 30 / 770 * c.height);
        ctx.fillStyle = "#1A6BE4";
        ctx.textAlign = "left";
        ctx.fillText(percents[i], (positions[i] + 5) / 1580 * c.width, 30 / 770 * c.height);
        ctx.font = "24px Roboto Condensed";
        ctx.fillStyle = "white";
        ctx.textAlign = "center";
        ctx.fillText("заболеваний", positions[i] / 1580 * c.width, 60 / 770 * c.height);
    }
}

function calculateMaxValue() {
    var max = 0;
    for (var i = 0; i < values.length; i++) {
        if (values[i] > max)
            max = values[i];
    }
    return (parseInt(max / 3000) + 1) * 3000;
}

function drawCircle(x, y, color) {
    ctx.beginPath();
    ctx.arc(x, y, 5, 0, Math.PI * 2, true);
    ctx.lineWidth = 10;
    ctx.strokeStyle = color;
    ctx.stroke();
    //draw black dot in middle
    ctx.beginPath();
    ctx.arc(x, y, 3, 0, Math.PI * 2, true);
    ctx.lineWidth = 6;
    ctx.strokeStyle = 'black';
    ctx.stroke();
}

function drawLine(x1, y1, x2, y2, color) {
    ctx.beginPath();
    ctx.moveTo(x1, y1);
    ctx.lineTo(x2, y2);
    ctx.lineWidth = 4;
    ctx.strokeStyle = color;
    ctx.stroke();
}

function drawValueGraph(maxValue) {
    for (var i = 1; i < positions.length; i++) {
        drawLine(positions[i - 1] / 1580 * c.width,
            ((1 - values[i - 1] / maxValue) * 543 + 92) / 770 * c.height,
            positions[i] / 1580 * c.width,
            ((1 - values[i] / maxValue) * 543 + 92) / 770 * c.height,
            '#EF1010');
    }
    for (var i = 0; i < positions.length; i++) {
        drawCircle(positions[i] / 1580 * c.width,
            ((1 - values[i] / maxValue) * 543 + 92) / 770 * c.height,
            '#EF1010');
    }
}

function drawPercentGraph(maxPercent) {
    for (var i = 1; i < positions.length; i++) {
        drawLine(positions[i - 1] / 1580 * c.width,
            ((1 - percents[i - 1] / maxPercent) * 543 + 92) / 770 * c.height,
            positions[i] / 1580 * c.width,
            ((1 - percents[i] / maxPercent) * 543 + 92) / 770 * c.height,
            '#1A6BE4');
    }
    for (var i = 0; i < positions.length; i++) {
        drawCircle(positions[i] / 1580 * c.width,
            ((1 - percents[i] / maxPercent) * 543 + 92) / 770 * c.height,
            '#1A6BE4');
    }
}

function calculateMaxPercent() {
    var max = 0;
    for (var i = 0; i < percents.length; i++) {
        if (percents[i] > max)
            max = percents[i];
    }
    return (parseInt(max / 10) + 1) * 10;
    // return 1000;
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

    drawBorderLines();
    drawRegionsNames();
    drawValues();
    var max = calculateMaxValue();
    drawLeft(max);
    drawValueGraph(max);
    drawPercentGraph(calculateMaxPercent());

    if(isPredicted){
        document.getElementById('prognosed').innerText = "Результаты были спрогнозированы с использованием искуственного интеллекта";
    }
}