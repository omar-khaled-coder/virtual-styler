import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-form"
export default class extends Controller {

  static targets = ["rooms", "form"]


  scroll() {
    this.roomsTarget.scrollIntoView({ behavior: "auto" })
    // console.log("scroll")
  }

  submit() {
    // console.log("clicked")

    this.formTarget.submit();
  }

}
