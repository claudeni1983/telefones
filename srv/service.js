const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(){

    this.on('getByName', async (req) => {
        const nome = req.data.userName.nome;
        const cont = await SELECT.from('telefones.Contatos').columns('fone');
        return JSON.stringify(cont); //`My name is ${nome}`;
    });

    this.on('InsertContato', async (req) => {

        const inputContato = req.data.contato;        
        const outputContato = [
            {
                nome : inputContato.nome,
                fone : inputContato.fone,
                dataNasc : inputContato.dataNasc 
            }
        ];

        await INSERT (outputContato) .into ('telefones.Contatos');

    });

});