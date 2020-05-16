let express = require('express');
let axios = require('axios');
let router = express.Router();

/* GET all diseases info page. */
router.get('/all', function (req, res, next) {

    let name = "ВИЧ";
    let yearNow, yearPast, yearFuture;
    let diseasesNames, yearsPredicted, yearsNotPredicted, data;

    axios
        .get('http://localhost:8080/info/diseases')
        .then(response => {
            diseasesNames = response.data.content.map(function (entry) {
                return entry.content;
            });
        })
        .catch(error => console.log(error));

    axios
        .get('http://localhost:8080/districts/all'
            + (req.query.disease === undefined ? '' : '?disease=' + encodeURIComponent(req.query.disease))
            + (req.query.year === undefined ? '' : '&year=' + encodeURIComponent(req.query.year)))
        .then(response => {
                name = response.data.name;
                yearNow = response.data.year;
                yearsPredicted = Array.from(response.data.yearsPredicted).sort();
                yearsNotPredicted = Array.from(response.data.yearsNotPredicted).sort();

                let isPredicted = yearsPredicted.includes(yearNow);
                let index = (isPredicted) ? yearsPredicted.indexOf(yearNow) : yearsNotPredicted.indexOf(yearNow);

                yearPast = (isPredicted)
                    ? (index - 1 < 0
                        ? yearsNotPredicted[yearsNotPredicted.length - 1]
                        : yearsPredicted[index - 1])
                    : (index - 1 < 0
                        ? -1
                        : yearsNotPredicted[index - 1]);

                yearFuture = (isPredicted)
                    ? (index + 1 < yearsPredicted.length
                        ? yearsPredicted[index + 1]
                        : -1)
                    : (index + 1 < yearsNotPredicted.length
                        ? yearsNotPredicted[index + 1]
                        : (yearsPredicted.length !== 0 ? yearsPredicted[0] : -1));

                data = response.data.data;
            }
        )
        .catch(error => console.log(error))
        .finally(() => {
            req.session.sessionFlash = {
                type: 'from',
                message: '/districts/all'
            };
            res.render('all', {
                title: 'MEDCourse',
                name: name,
                diseasesNames: diseasesNames,
                yearNow: yearNow,
                yearPast: yearPast,
                yearFuture: yearFuture,
                data: data
            });
        });
});

/* GET one disease info page. */
router.get('/', function (req, res, next) {

    let diseasesNames, name, district, data, yearNow, yearPast, yearFuture;

    axios.all([
        axios.get('http://localhost:8080/districts'
            + '?district=' + (req.query.district === undefined
                ? encodeURIComponent('центральный федеральный округ')
                : encodeURIComponent(req.query.district))
            + (req.query.disease === undefined ? '' : '&disease=' + encodeURIComponent(req.query.disease))
            + (req.query.year === undefined ? '' : '&year=' + encodeURIComponent(req.query.year))),
        axios.get('http://localhost:8080/info/diseases')
    ])
        .then(axios.spread((mainRes, tempRes) => {

                data = mainRes.data;
                name = data.name;
                district = data.district;
                diseasesNames = tempRes.data.content.map(function (entry) {
                    return entry.content;
                });

                yearNow = data.year;
                yearsPredicted = Array.from(data.yearsPredicted).sort();
                yearsNotPredicted = Array.from(data.yearsNotPredicted).sort();

                let isPredicted = yearsPredicted.includes(yearNow);
                let index = (isPredicted) ? yearsPredicted.indexOf(yearNow) : yearsNotPredicted.indexOf(yearNow);

                yearPast = (isPredicted)
                    ? (index - 1 < 0
                        ? yearsNotPredicted[yearsNotPredicted.length - 1]
                        : yearsPredicted[index - 1])
                    : (index - 1 < 0
                        ? -1
                        : yearsNotPredicted[index - 1]);

                yearFuture = (isPredicted)
                    ? (index + 1 < yearsPredicted.length
                        ? yearsPredicted[index + 1]
                        : -1)
                    : (index + 1 < yearsNotPredicted.length
                        ? yearsNotPredicted[index + 1]
                        : (yearsPredicted.length !== 0 ? yearsPredicted[0] : -1));
            }
        ))
        .catch(error => console.log(error))
        .finally(() => {
            req.session.sessionFlash = {
                type: 'from',
                message: '/districts'
            };
            res.render('stats', {
                title: 'MEDCourse',
                diseasesNames: diseasesNames,
                name: name,
                district: district,
                yearNow: yearNow,
                yearPast: yearPast,
                yearFuture: yearFuture,
                data: data
            });
        })
});

module.exports = router;
