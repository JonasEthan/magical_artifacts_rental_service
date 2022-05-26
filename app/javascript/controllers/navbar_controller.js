import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("hello");
  }
  updateNavbar() {
    if (window.scrollY >= 100) {
      this.element.classList.add("show");
    } else {
      this.element.classList.remove("show");
    }
  }
}
