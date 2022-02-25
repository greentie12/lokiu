/* Importing classes and methods*/
import { LightningElement,api, wire, track } from 'lwc';
import apexMethod from '@salesforce/apex/EmailManager.sendMail';
import findContacts from '@salesforce/apex/ContactController.findContacts';


/*Importing data from schema */
import CHECK_IN_DATE_TIME from '@salesforce/schema/Maintenance_Request__c.Check_In_Date_Time__c';
import CHECK_OUT_DATE_TIME from '@salesforce/schema/Maintenance_Request__c.Check_Out_Date_Time__c';
import MAINTENANCE_STATUS from '@salesforce/schema/Maintenance_Request__c.Maintenance_Status__c';
import MAKE from '@salesforce/schema/Maintenance_Request__c.Make__c';
import MODEL from '@salesforce/schema/Maintenance_Request__c.Model__c';
import VEHICLE_STATUS from '@salesforce/schema/Maintenance_Request__c.Vehicle_Status__c';
import VIN_NUMBER from '@salesforce/schema/Maintenance_Request__c.Vehicle_Information__c';
import MAINTENANCE_REQUEST from '@salesforce/schema/Maintenance_Request__c';

export default class MaintenanceRequest extends LightningElement {
  
/* Declaring objects and variables */
  objectName= MAINTENANCE_REQUEST;
  objectFields=[
        CHECK_IN_DATE_TIME,
        CHECK_OUT_DATE_TIME,
        VEHICLE_STATUS,
        MAINTENANCE_STATUS,
        MAKE,
        MODEL,
      VIN_NUMBER
  ];
/* Declaring methods */
  handleLoad(event){}
  handleCancel(event){}
  handleSubmit(event){}
  handleSucess(event){}
  handleError(event){}

}