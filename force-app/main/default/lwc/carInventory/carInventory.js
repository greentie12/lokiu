import { LightningElement } from "lwc";
import { getRecord } from "lightning/uiRecordApi";
import { NavigationMixin } from "lightning/navigation";

import Model__c from "@salesforce/schema/Vehicle_Inventory__c";

export default class CarInventory extends NavigationMixin(LightningElement) {
  createAccount() {
    this[NavigationMixin.Navigate]({
      type: "standard__objectPage",
      attributes: {
        objectApiName: "Model__c",
        actionName: "new"
      }
    });
  }
}