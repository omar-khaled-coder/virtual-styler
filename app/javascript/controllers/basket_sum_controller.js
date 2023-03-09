import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="basket-sum"
export default class extends Controller {

  static targets = ["sum", "quantity", "price"]

  connect() {
    //console.log(this.priceTarget.innerText)
    //console.log(this.quantityTarget.innerText)

    document.getElementById("sum").innerText = "banana"

  }
}
