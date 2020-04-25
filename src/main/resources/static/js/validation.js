$(document).ready(function () {

    var jVal = {
        'disease': function () {

            $('body').append('<div id="diseaseInfo" class="info"></div>');

            var form = document.getElementById("valuesChild");
            var position = $('#content').offset();
            var diseaseInfo = $('#diseaseInfo');
            var option = $('#disease').val();

            diseaseInfo.css({
                top: position.top + 38,
                right: position.left - 13
            });

            if (option == null) {
                jVal.errors = true;
                form.style.display = "none";
                diseaseInfo.removeClass('correct').addClass('error').html("Выберите заболевание!").show();
            } else {
                diseaseInfo.removeClass('error').addClass('correct').html('&radic;').show();
                if (option === "вич") {
                    form.style.display = "block";
                } else {
                    form.style.display = "none";
                }
            }

        },

        'region': function () {

            $('body').append('<div id="regionInfo" class="info"></div>');

            var position = $('#content').offset();
            var regionInfo = $('#regionInfo');
            var option = $('#region').val();

            regionInfo.css({
                top: position.top + 109,
                right: position.left - 13
            });

            if (option == null) {
                jVal.errors = true;
                regionInfo.removeClass('correct').addClass('error').html('Выберите регион!').show();
            } else {
                regionInfo.removeClass('error').addClass('correct').html('&radic;').show();
            }
        },

        'values': function () {

            $('body').append('<div id="valuesInfo" class="info"></div>');

            var absolute = +document.getElementById("absolute").value;
            var population = +document.getElementById("population").value;

            var valuesInfo = $('#valuesInfo');
            var populationPos = $('#population');
            var position = populationPos.offset();

            valuesInfo.css({
                top: position.top + 2,
                left: position.left + populationPos.width() + 64
            });

            if (absolute == 0 || population == 0) {
                jVal.errors = true;
                valuesInfo.removeClass('correct').addClass('error').html('Обязательные поля!').show();
            } else {
                if (absolute > population) {
                    valuesInfo.removeClass('error').addClass('correct').html('&radic;').show();
                } else {
                    jVal.errors = true;
                    valuesInfo.removeClass('correct').addClass('error').html('Аблолютное чисто должно быть больше!').show();
                }
            }
        },

        'valuesChild': function () {

            $('body').append('<div id="valuesHivInfo" class="info"></div>');

            var absolute = +document.getElementById("absolute-hiv").value;
            var population = +document.getElementById("population-hiv").value;

            var form = document.getElementById("valuesChild");
            var valuesHivInfo = $('#valuesHivInfo');
            var populationHivPos = $('#population-hiv');
            var position = populationHivPos.offset();

            valuesHivInfo.css({
                top: position.top + 2,
                left: position.left + populationHivPos.width() + 60
            });

            if (form.style.display == "block") {
                if (absolute == 0 || population == 0) {
                    jVal.errors = true;
                    valuesHivInfo.removeClass('correct').addClass('error').html('Обязательные поля!').show();
                } else {
                    if (absolute > population) {
                        valuesHivInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    } else {
                        jVal.errors = true;
                        valuesHivInfo.removeClass('correct').addClass('error').html('Аблолютное чисто должно быть больше!').show();
                    }
                }
            } else {
                valuesHivInfo.hide();
            }
        },

        'year': function () {

            $('body').append('<div id="yearInfo" class="info"></div>');

            var yearInfo = $('#yearInfo');
            var year = +document.getElementById("year").value;

            var field = $('#year');
            var position = field.offset();

            yearInfo.css({
                top: position.top + 2,
                left: position.left + field.width() + 31
            });

            if (year == 0) {
                jVal.errors = true;
                yearInfo.removeClass('correct').addClass('error').html('Обязательное поле!').show();
            } else {
                if (year > 1900 && year < 2100) {
                    yearInfo.removeClass('error').addClass('correct').html('&radic;').show();
                } else {
                    jVal.errors = true;
                    yearInfo.removeClass('correct').addClass('error').html('Введите корректный год!').show();
                }
            }

        },

        'send': function () {
            if (!jVal.errors) {
                $('#MyForm').submit();
            }
        }
    };

    // $('#button').click(function () {
    //     var obj = $.browser.webkit ? $('body') : $('html');
    //     obj.animate({scrollTop: $('#MyForm').offset().top}, 750, function () {
    //         jVal.errors = false;
    //         jVal.disease();
    //         jVal.region();
    //         jVal.values();
    //         jVal.valuesChild();
    //         jVal.year();
    //         jVal.send();
    //     });
    //     return false;
    // });

    $('#disease').change(jVal.disease);
    $('#region').change(jVal.region);
    $('#values').change(jVal.values);
    $('#valuesChild').change(jVal.valuesChild);
    $('#year').change(jVal.year);

});