import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["MARS", "Magical Artifacts Rental Service"],
      typeSpeed: 60,
      backSpeed: 0,
      loop: true,
      loopCount: 2,
      showCursor: false
    })
  }
}
