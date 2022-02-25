//Gabriela Conrado 02/23/2022 7:29 a.m.
//When a new record is inserted, the trigger is fired and it calls a method senMail from the 
//class EmailMRClass which send an email to the corresponded person to let her know that a new maintenance request has been created 

trigger EmailMRTrigger on Maintenance_Request__c (after insert) {
   
    if(Trigger.isInsert){
        //An integer variable has been declared to count how many records are been created
        Integer emailMr= Trigger.New.size();
        //The class that send the email *EmailMRClass* and its method is called 
        EmailMRClass.sendMail('gabrielaconrado86@gmail.com', 'New Maintenance Request', emailMr + '  new maintenance request has been added.');
        }
}