import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="count-item"
export default class extends Controller {

  static targets = ["input"]

  add(e) {
    let input_value = e.currentTarget.previousElementSibling.value
    input_value = parseInt(input_value)
    input_value += 1
    e.currentTarget.previousElementSibling.value =  input_value.toString()
  }

  minus(e) {
    let input_value = e.currentTarget.nextElementSibling.value
    input_value = parseInt(input_value)
    input_value === 0 ? input_value -= 0 : input_value -= 1
    e.currentTarget.nextElementSibling.value =  input_value.toString()
  }
}
