import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="count-item"
export default class extends Controller {

  static targets = ["input"]

  add() {
    let input_value = this.inputTarget.value
    input_value = parseInt(input_value)
    input_value += 1
    this.inputTarget.value =  input_value.toString()
  }

  minus() {
    let input_value = this.inputTarget.value
    input_value = parseInt(input_value)
    input_value === 0 ? input_value -= 0 : input_value -= 1
    this.inputTarget.value =  input_value.toString()
  }
}
