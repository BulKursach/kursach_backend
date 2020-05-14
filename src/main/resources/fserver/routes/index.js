let express = require('express');
let axios = require('axios');
let router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {

    let data, links;

    const capitalize = (str, lower = false) =>
        (lower ? str.toLowerCase() : str).replace(/(?:^|\s|["'([{])+\S/g, match => match.toUpperCase());

    axios
        .get('http://localhost:8080')
        .then(response => {
            data = response.data.content;
            links = response.data.links;
            }
        )
        .catch(error => console.log(error))
        .finally(() => res.render('index', {
                title: 'MEDCourse',
                data: data,
                links: links,
                capitalize: capitalize
            }));
});

module.exports = router;
