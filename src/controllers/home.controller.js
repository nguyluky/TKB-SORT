const { request, response } = require('express');

/**
 * 
 * @param {request} req 
 * @param {response} res 
 */
async function getHomePage(req, res) {
    res.render('able', {})
}


module.exports = {
    getHomePage
}