using { telefones as my } from '../db/model';

service CatalogService {

    entity contatos                
    @(restrict :[    
        {
            grant : [ 'READ' ],
            to : [ 'TelefonesViewer' ]            
        },       
        {
            grant : [ '*' ],
            to : [ 'TelefonesManager' ]
        }
    ])   
    as projection on my.Contatos;

    type userNome : {
        nome : String
    }

    type tContato : {
        nome : String;
        fone : String;
        dataNasc : Date; 
    }

    action getByName (userName : userNome) returns String;

    action InsertContato (contato : tContato) returns contatos;

//    action processContacts (input: String) returns String;

}