const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(){

    this.on('processContacts', async (req) => {
        return "My test...";
    });

});