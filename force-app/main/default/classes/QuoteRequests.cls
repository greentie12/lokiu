//Mohammed Azad
//Used for populating the database.Batchable
public with sharing class QuoteRequests {

    public static void insertinformation() 
    {
        List<Quote__c> quoteList = new List<Quote__c>();
        Quote__c quoteOne = new Quote__c(PersonName__c='Billy', Address__c='Down the road', PersonEmail__c='Billy@email.com', Phone__c='11111111111', QuoteRequestId__c=1);
        Quote__c quoteTwo = new Quote__c(PersonName__c='Bobby', Address__c='My house', PersonEmail__c='Bobby@email.com', Phone__c='2222222222', QuoteRequestId__c=1);
        Quote__c quoteThree = new Quote__c(PersonName__c='Jenny', Address__c='Michael Jackon Ave', PersonEmail__c='Jenny@email.com', Phone__c='3333333333', QuoteRequestId__c=2);
        Quote__c quoteFour = new Quote__c(PersonName__c='Jessica', Address__c='DunkinCoffee', PersonEmail__c='Jessica@email.com', Phone__c='4444444444', QuoteRequestId__c=5);
        Quote__c quoteFive = new Quote__c(PersonName__c='Murphy', Address__c='Startrucks', PersonEmail__c='Murphy@email.com', Phone__c='5555555555', QuoteRequestId__c=3);
        Quote__c quoteSix = new Quote__c(PersonName__c='Johnson', Address__c='Headphones Rd', PersonEmail__c='Johson@email.com', Phone__c='6666666666', QuoteRequestId__c=7);
        Quote__c quoteSeven = new Quote__c(PersonName__c='Juanita', Address__c='Monitor Valley', PersonEmail__c='Juanita@email.com', Phone__c='7777777777', QuoteRequestId__c=4);
        Quote__c quoteEight = new Quote__c(PersonName__c='Peter', Address__c='Keyboard Rest', PersonEmail__c='Peter@email.com', Phone__c='8888888888', QuoteRequestId__c=2);
        Quote__c quoteNine = new Quote__c(PersonName__c='Luke', Address__c='MouseHouse', PersonEmail__c='Luke@email.com', Phone__c='9999999999', QuoteRequestId__c=9);
        Quote__c quoteTen = new Quote__c(PersonName__c='Marques', Address__c='RatBatting Stadium', PersonEmail__c='Marques@email.com', Phone__c='1234567890', QuoteRequestId__c=6);

        quoteList.add(quoteOne);
        quoteList.add(quoteTwo);
        quoteList.add(quoteThree);
        quoteList.add(quoteFour);
        quoteList.add(quoteFive);
        quoteList.add(quoteSix);
        quoteList.add(quoteSeven);
        quoteList.add(quoteEight);
        quoteList.add(quoteNine);
        quoteList.add(quoteTen);
        insert quoteList;
    }
    //Single entry of record through passing parameters
    public static void directInsertInformation(String name, String adres, String emil, String phn, Integer givenId) 
    {
        Quote__c anotherOne = new Quote__c(PersonName__c=name, Address__c=adres, PersonEmail__c=emil, Phone__c=phn, QuoteRequestId__c=givenId);
        insert anotherOne;
    }
        //Single entry delete from the person's name
    public static void directDelete(String deleteName)
    {
        try 
        {
            List<Quote__c> deleteList = [SELECT PersonName__c, Phone__c FROM Quote__c WHERE PersonName__c =: deleteName];
            delete deleteList;
        } catch (DmlException e) 
        {
            System.debug('Sorry no can do, error.');
        }
    }
}