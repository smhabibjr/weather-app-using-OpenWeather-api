import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="weather"
export default class extends Controller {
  connect() {
    console.log("weather controller has been connected!");
  }
}
