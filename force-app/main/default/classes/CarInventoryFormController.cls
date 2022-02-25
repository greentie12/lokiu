public with sharing class CarInventoryFormController {
    
    /* Aura enabled method to query the car types
    and return the types to our component */
    @AuraEnabled(cacheable=true)
    public static List<Car_Type__c> getCarTypes(){
        return [SELECT Id, Name FROM Car_Type__c]; 
    }
}