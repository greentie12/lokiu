//Mohammed Azad
import { LightningElement, wire, track, api } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

//Importing all the object related information
import QUOTE from '@salesforce/schema/Quote__c'
import QUOTENAME from '@salesforce/schema/Quote__c.PersonName__c';
import ADDRESS from '@salesforce/schema/Quote__c.Address__c';
import PHONE from '@salesforce/schema/Quote__c.Phone__c';
import QUOTEREQUESTID from '@salesforce/schema/Quote__c.QuoteRequestId__c';
import EMAIL from '@salesforce/schema/Quote__c.PersonEmail__c';
import CAR from '@salesforce/schema/Quote__c.Car__c';
import test from '@salesforce/schema/Task'

export default class Requestquota extends LightningElement {
    //Populates the fields of the lightning record form
    objectApiName = QUOTE;
    fields = [
        QUOTENAME,
        ADDRESS,
        PHONE,
        EMAIL,
        QUOTEREQUESTID,
        CAR
    ];
    //Confirmation for developer and user satisfaction.
    handleSuccess(event){
        const env = new ShowToastEvent(
            {
                title: 'New Quote Created',
                message: 'Thank you for creating a new record',
                variant: 'success',
            }
        );
        this.dispatchEvent(env);
    }
    //Warning for developer and user.
    handleCancel(event) {
        const env = new ShowToastEvent(
            {
                title: 'Canceled',
                message: 'Unfortunate, but maybe next time',
                variant: 'warning',
            }
        )
    }
    handleSubmit(event) {}

}