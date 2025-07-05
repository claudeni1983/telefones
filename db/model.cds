using { managed, cuid } from '@sap/cds/common';

namespace telefones;

entity Contatos : cuid, managed {
    nome: String;
    fone: String;
    dataNasc: Date;
    idade: Integer
}