trigger TestDriveTask on Test_Drive__c (before insert) {
/*TaskonTestDrive helper;
   helper.createTask(Trigger.new);*/
    for(Test_Drive__c td :Trigger.New){
        System.debug('Test from trigger');
        Task t = new Task();
        t.Subject='Follow-up';
        t.Status='Normal';
        t.Priority='Normal';
        t.WhatId=td.id;
        t.WhoId=td.CreatedById;
        insert t;
        System.debug('Complete');
        
    //Task oTask = new Task (Subject='Follow-up', Status= 'Normal', Priority='Normal');
    	//insert oTask;
        }
 /*   if(trigger.new[0].Drive_Feedback__C != null) {
        Task oTask = new Task (Subject='Follow-up', Status= 'Normal', Priority='Normal');
    	insert oTask;
    
    }*/
}