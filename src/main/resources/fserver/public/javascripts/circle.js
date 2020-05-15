var c = document.getElementById('canvas');
var ctx = c.getContext('2d');
var x = 270;
var y = 253;

var valuesCircle = new function() {
    var r = 200;
    //max value in circle #changeThis
    var maxValue = 10000;
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
        ctx.fillText(maxValue, x, y + r + 25);

        ctx.fillStyle = "#EF1010";
        ctx.fillText(value, x1 * 25 / (Math.sqrt(x1 * x1 + y1 * y1)) + x + x1, y1 * 25 / (Math.sqrt(x1 * x1 + y1 * y1)) + y + y1);
    }
}

var percentCircle = new function() {
    var r = 100;
    //max value in circle #changeThis
    var maxPercent = 100;
    //displayed value in circle #changeThis
    var percent = 62.8;
    this.draw = function() {
        ctx.beginPath();
        ctx.arc(x, y, r, 0.5 * Math.PI, (-percent / maxPercent * 2 + 0.5) * Math.PI, true);
        ctx.lineWidth = 5;
        ctx.strokeStyle = "#1A6BE4";
        ctx.stroke();

        ctx.font = "48px Roboto Condensed";
        ctx.fillStyle = "#1A6BE4";
        ctx.textAlign = "center";
        ctx.textBaseline = "middle";
        ctx.fillText(percent + "%", x, y);
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
    valuesCircle.draw();
    percentCircle.draw();
}