$(document).ready(function () {

    let jVal = {
        'disease': function () {

            $('body').append('<div id="diseaseInfo" class="info"></div>');

            let form = document.getElementById("valuesChild");
            let position = $('#content').offset();
            let diseaseInfo = $('#diseaseInfo');
            let option = $('#disease').val();

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
                if (option == "ВИЧ") {
                    form.style.display = "block";
                } else {
                    form.style.display = "none";
                }
            }

        },

        'region': function () {

            $('body').append('<div id="regionInfo" class="info"></div>');

            let position = $('#content').offset();
            let regionInfo = $('#regionInfo');
            let option = $('#region').val();

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

            let absolute = +document.getElementById("absolute").value;
            let population = +document.getElementById("population").value;

            let valuesInfo = $('#valuesInfo');
            let populationPos = $('#population');
            let position = populationPos.offset();

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

            let absolute = +document.getElementById("absolute-hiv").value;
            let population = +document.getElementById("population-hiv").value;

            let form = document.getElementById("valuesChild");
            let valuesHivInfo = $('#valuesHivInfo');
            let populationHivPos = $('#population-hiv');
            let position = populationHivPos.offset();

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

            let yearInfo = $('#yearInfo');
            let year = +document.getElementById("year").value;

            let field = $('#year');
            let position = field.offset();

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

    $('#button').click(function () {
        let obj = $.browser.webkit ? $('body') : $('html');
        obj.animate({scrollTop: $('#MyForm').offset().top}, 750, function () {
            jVal.errors = false;
            jVal.disease();
            jVal.region();
            jVal.values();
            jVal.valuesChild();
            jVal.year();
            jVal.send();
        });
        return false;
    });

    $('#disease').change(jVal.disease);
    $('#region').change(jVal.region);
    $('#values').change(jVal.values);
    $('#valuesChild').change(jVal.valuesChild);
    $('#year').change(jVal.year);

});