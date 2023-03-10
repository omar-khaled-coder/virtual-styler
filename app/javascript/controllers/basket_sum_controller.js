import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="basket-sum"
export default class extends Controller {

  static targets = ["sum", "quantity", "price"]

  connect() {
     const pricesArray = this.priceTargets
     let clean_prices = []
     pricesArray.forEach((price)=>{
      clean_prices.push(price.innerText)
     })

     const quantityArray = this.quantityTargets
     let clean_quantities = []
     quantityArray.forEach((quantity)=>{
      clean_quantities.push(quantity.innerText)
     })
     console.log(clean_quantities);

    let zipped = clean_prices.map((x, i) => [x * clean_quantities[i]]);

    let total_sum = 0
    zipped.forEach((arr)=> {
      total_sum += arr[0]
    })



    document.getElementById("sum").innerText = total_sum

  }
}
