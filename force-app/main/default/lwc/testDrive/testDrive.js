import { LightningElement } from 'lwc';

import Drive_Date__c from '@salesforce/schema/Test_Drive__c.Drive_Date__c';
import VIN_Number__c from '@salesforce/schema/Test_Drive__c.VIN_Number__c';
import Make__c from '@salesforce/schema/Test_Drive__c.Make__c';
import Model__c from '@salesforce/schema/Test_Drive__c.Model__c';
import Vehicle_Returned__c from '@salesforce/schema/Test_Drive__c.Vehicle_Returned__c';
import Drive_Feedback__c from '@salesforce/schema/Test_Drive__c.Drive_Feedback__c';

export default class RecordForm extends LightningElement {

    selectedFields = [VIN_Number__c, Drive_Date__c, Make__c, Model__c, Vehicle_Returned__c, Drive_Feedback__c];
}