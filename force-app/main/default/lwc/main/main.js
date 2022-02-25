import { LightningElement } from "lwc";

export default class Hero extends LightningElement {
  showForm = false;

  handleForm() {
    if (!this.showForm) {
      this.showForm = true;
    }
  }

  handleHome() {
    if (this.showForm) {
      this.showForm = false;
    }
  }

  scrollDown() {
    const topDiv = this.template.querySelector(".scroll");
    topDiv.scrollIntoView({
      behavior: "smooth",
      block: "start",
      inline: "nearest"
    });
  }

  handleScrollVehicles() {
    if (!this.showForm) {
      const topDiv = this.template.querySelector(".scroll");
      topDiv.scrollIntoView({
        behavior: "smooth",
        block: "start",
        inline: "nearest"
      });
    } else {
      this.showForm = false;
    }
  }
}