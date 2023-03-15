import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {

  static targets = ["unitprice", "input", "total"]



  connect() {

    let inputs = this.inputTargets
    let clean_inputs = []
    inputs = inputs.forEach((input) => {
      clean_inputs.push(parseInt(input.value))
    })

    let unit_prices = this.unitpriceTargets
    let clean_unit_prices = []
    unit_prices = unit_prices.forEach((price)=> {
      clean_unit_prices.push(parseInt(price.innerText))
    })

    let zipped = clean_inputs.map((x, i) => [x * clean_unit_prices[i]]);


    let total_sum = 0
    zipped.forEach((arr)=> {
      total_sum += arr[0]
    })

    this.totalTarget.innerText = total_sum.toString()
  }









  update() {

    let inputs = this.inputTargets
    let clean_inputs = []
    inputs = inputs.forEach((input) => {
      clean_inputs.push(parseInt(input.value))
    })

    let unit_prices = this.unitpriceTargets
    let clean_unit_prices = []
    unit_prices = unit_prices.forEach((price)=> {
      clean_unit_prices.push(parseInt(price.innerText))
    })

    let zipped = clean_inputs.map((x, i) => [x * clean_unit_prices[i]]);


    let total_sum = 0
    zipped.forEach((arr)=> {
      total_sum += arr[0]
    })

    this.totalTarget.innerText = total_sum.toString()
  }
}
