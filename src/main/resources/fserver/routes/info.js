let express = require('express');
let axios = require('axios');
let router = express.Router();

/* GET disease info page. */
router.get('/', function (req, res, next) {

    let diseasesNames, name, data;

    axios.all([
        axios.get('http://localhost:8080/info'
            + (req.query.disease === undefined ? '' : '?disease=' + encodeURIComponent(req.query.disease))),
        axios.get('http://localhost:8080/info/diseases')
    ])
        .then(axios.spread((mainRes, tempRes) => {
                name = req.query.disease !== undefined ? req.query.disease : 'ВИЧ';
                data = mainRes.data;
                diseasesNames = tempRes.data.content.map(function (entry) {
                    return entry.content;
                });
            }
        ))
        .catch(error => console.log(error))
        .finally(() => {
            res.render('info', {
                from: res.locals.sessionFlash,
                title: 'MEDCourse',
                diseasesNames: diseasesNames,
                name: name,
                data: data
            });
        })
});

module.exports = router;

