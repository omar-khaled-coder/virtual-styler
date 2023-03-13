// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"



let div0 = document.querySelectorAll(".preset-div")[0]
let div1 = document.querySelectorAll(".preset-div")[1].style.display = "none"

let controlButton1 = document.querySelectorAll(".control-button")[1]
let controlButton0 = document.querySelectorAll(".control-button")[0]


controlButton1.addEventListener("click", function(){
  div0.style.display = "none"
  document.querySelectorAll(".preset-div")[1].style.display = "flex"
})



controlButton0.addEventListener("click", function(){
  document.querySelectorAll(".preset-div")[1].style.display = "none"
  document.querySelectorAll(".preset-div")[0].style.display = "flex"
})
