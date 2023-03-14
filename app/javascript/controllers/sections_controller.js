import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sections"
export default class extends Controller {

  static targets = ["playlist", "cocktails", "mainDishes", "moodBoard", "games", "mocktails"]

  showPlaylist() {
    this.playlistTarget.classList.remove("d-none")
    this.cocktailsTarget.classList.add("d-none")
    this.mainDishesTarget.classList.add("d-none")
    this.moodBoardTarget.classList.add("d-none")
    this.gamesTarget.classList.add("d-none")
    this.mocktailsTarget.classList.add("d-none")
  }

  showCocktails() {
    this.playlistTarget.classList.add("d-none")
    this.cocktailsTarget.classList.remove("d-none")
    this.mainDishesTarget.classList.add("d-none")
    this.moodBoardTarget.classList.add("d-none")
    this.gamesTarget.classList.add("d-none")
    this.mocktailsTarget.classList.add("d-none")
  }

  showMainDishes() {
    this.playlistTarget.classList.add("d-none")
    this.cocktailsTarget.classList.add("d-none")
    this.mainDishesTarget.classList.remove("d-none")
    this.moodBoardTarget.classList.add("d-none")
    this.gamesTarget.classList.add("d-none")
    this.mocktailsTarget.classList.add("d-none")
  }

  showMoodBoard() {
    this.playlistTarget.classList.add("d-none")
    this.cocktailsTarget.classList.add("d-none")
    this.mainDishesTarget.classList.add("d-none")
    this.moodBoardTarget.classList.remove("d-none")
    this.gamesTarget.classList.add("d-none")
    this.mocktailsTarget.classList.add("d-none")
  }

  showGames() {
    this.playlistTarget.classList.add("d-none")
    this.cocktailsTarget.classList.add("d-none")
    this.mainDishesTarget.classList.add("d-none")
    this.moodBoardTarget.classList.add("d-none")
    this.gamesTarget.classList.remove("d-none")
    this.mocktailsTarget.classList.add("d-none")
  }

  showMocktails() {
    this.playlistTarget.classList.add("d-none")
    this.cocktailsTarget.classList.add("d-none")
    this.mainDishesTarget.classList.add("d-none")
    this.moodBoardTarget.classList.add("d-none")
    this.gamesTarget.classList.add("d-none")
    this.mocktailsTarget.classList.remove("d-none")
  }
}
