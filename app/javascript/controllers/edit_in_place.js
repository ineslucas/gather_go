import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["form", "content", "edit"]

  toggleEdit(event) {
    event.preventDefault();
    event.stopPropagation();

    this.formTarget.classList.toggle("d-none");
    this.contentTarget.classList.toggle("d-none");
    this.editTarget.classList.toggle("d-none");
  }
}
