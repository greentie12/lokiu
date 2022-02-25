public with sharing class ContactController {
    @AuraEnabled
    
    public static List<Contact> findContacts(String searchkey) {
        String key = '%' + searchkey + '%';
        system.debug(key);
        return [SELECT Id, Name, Title, Phone, Email FROM Contact WHERE Name LIKE: key];
      
    }
}