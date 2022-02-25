import { LightningElement, api } from "lwc";

export default class CarCard extends LightningElement {
  //car supplied by the parent Result component
  @api car;
}