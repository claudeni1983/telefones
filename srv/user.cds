service CatalogUser {

    type UserInfo : {
        firstName : String;
        lastName : String;
        age : Integer;                
    }

//    action greetUser(user: UserInfo) returns String;
    action greetUser(user: UserInfo) returns UserInfo;

}