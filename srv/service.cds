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

//    action processContacts (input: String) returns String;

}