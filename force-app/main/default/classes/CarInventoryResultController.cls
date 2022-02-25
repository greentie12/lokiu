/* function to return all the cars based on the cartypeId
if carTypeId is blank or null return all cars
else return cars based on the id */

public with sharing class CarInventoryResultController {
    @AuraEnabled(cacheable=true)
    public static List<Car__c> getInventory(String carTypeId){
        if(String.isEmpty(carTypeId)){
            return [SELECT Id, Name, Picture__c, Contact__r.Name FROM Car__c];
        } else {
            return [SELECT Id, Name, Picture__c, Contact__r.Name FROM Car__c WHERE Car_type__c =: carTypeId];
        }
    }
}