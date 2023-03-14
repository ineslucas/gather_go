import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="parties"
export default class extends Controller {

  static targets = ["partyInfo"]

  showInfo(event) {
    const partyId = event.target.value
    const url = `/parties/${partyId}`
    console.log(url)

    fetch(url, {
      headers: { "Accept": "text/plain"}
    })
      .then(response => response.text())
      .then(data => {
        this.partyInfoTarget.outerHTML = data
      })

  }
}
