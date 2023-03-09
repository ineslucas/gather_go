import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-booking"
export default class extends Controller {
  static targets = [ "start", "address", "mocktail", "themes" ]

  displayMocktail() {
    this.startTarget.classList.add("d-none")
    this.mocktailTarget.classList.remove("d-none")
  }

  displayThemes() {
    this.mocktailTarget.classList.add("d-none")
    this.themesTarget.classList.remove("d-none")
  }

  displayAddress() {
    this.themesTarget.classList.add("d-none")
    this.addressTarget.classList.remove("d-none")
  }

  // I do the mood question
}
