import { LightningElement, api, wire, track } from "lwc";
import getInventory from "@salesforce/apex/CarInventoryResultController.getInventory";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class CarInventoryResult extends LightningElement {
  /* carTypeId supplied from the parent compnent */
  @api carTypeId;
  /*based on the carTypeId we'll make a call to the server
 to retrieve the cars asscoiated with the id */

  // cars property assigned by the getInventory call
  @track cars;

  //wire adapter to make a call to the Apex function
  @wire(getInventory, { carTypeId: "$carTypeId" })
  wiredInventory({ data, error }) {
    if (data) {
      this.cars = data;
    } else if (error) {
      this.showToast("ERROR", error.body.message, "error");
    }
  }

  showToast(title, message, variant) {
    const evt = new ShowToastEvent({
      title,
      message,
      variant
    });
    this.dispatchEvent(evt);
  }
}