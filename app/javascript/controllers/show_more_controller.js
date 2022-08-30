import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-more"
export default class extends Controller {
  static targets = ["show", "entry", "close"]
  connect() {
  }
  displayEntry(event) {
    console.log(event.path[2].innerText);
    this.entryTarget.classList.remove("card-display-none")
    this.showTarget.classList.add("card-display-none")
  }
  hideEntry() {
    this.entryTarget.classList.add("card-display-none")
    this.showTarget.classList.remove("card-display-none")
  }
}
