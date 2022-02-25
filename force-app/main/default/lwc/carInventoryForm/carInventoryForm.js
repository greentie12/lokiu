import { LightningElement, track, wire } from "lwc";
import getCarTypes from "@salesforce/apex/CarInventoryFormController.getCarTypes";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import { NavigationMixin } from "lightning/navigation";

// NavigationMixIn used for createNewCarType
export default class CarInventoryForm extends NavigationMixin(
  LightningElement
) {
  @track carTypes;

  @wire(getCarTypes)
  wiredCarType({ data, error }) {
    if (data) {
      // assign the carTypes array a default object for All Cars
      this.carTypes = [{ value: "", label: "All Cars" }];
      /* loop through the List provided by the 
      getCarTypes method iside our Apex class and
      reassign the values of Id & Name to label and value */
      data.forEach((element) => {
        const carType = {};
        carType.label = element.Name;
        carType.value = element.Id;
        /* push each object into the carTypes Array */
        this.carTypes.push(carType);
      });
    } else if (error) {
      this.showToast("Error", error.body.message, "error");
    }
  }

  /* function getting called when user 
  changes the value from the combobox  */
  handleCarTypeChange(e) {
    const carTypeId = e.detail.value;
    /* dispatch custom event to pass the carTypeId 
    to be handled in the parent compnent */
    const carTypeSelectionChangeEvent = new CustomEvent("cartypeselect", {
      detail: carTypeId
    });

    this.dispatchEvent(carTypeSelectionChangeEvent);
  }

  /* function to show a pop-up to user 
  to create a new car type using NavigationMixIn
  to open a 'new' record page from 'Car_type__c' */
  createNewCarType() {
    this[NavigationMixin.Navigate]({
      type: "standard__objectPage",
      attributes: {
        objectApiName: "Car_type__c",
        actionName: "new"
      }
    });
  }

  /*   */
  showToast(title, message, variant) {
    const evt = new ShowToastEvent({
      title,
      message,
      variant
    });
    this.dispatchEvent(evt);
  }
}