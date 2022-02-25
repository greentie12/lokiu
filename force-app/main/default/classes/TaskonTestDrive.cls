/*Harini 02/24/2022*/

public class TaskonTestDrive {
 List<Task> tskList = new List<Task>();
       public void createTask(List<Test_Drive__c> tDrive)
	   {
	          for(Test_Drive__c tdObj : tDrive)
			  {
			      if(tdObj.Drive_Feedback__c != null)
				  {
				     Task tsk = new Task();
					 tsk.Subject = 'Follow-up on Test Drive Feedback';
					 tsk.Status = 'In Progress';
					 tsk.Priority = 'Normal';
					 tsk.WhatId = tdObj.id;
					 tskList.add(tsk);
				  }
			  }
			        if(tskList!=null && tskList.size()>0)
			  
			           insert tskList;
 }
}