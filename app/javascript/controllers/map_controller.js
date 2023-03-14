import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/lucasinesmaria/clf74ogmq00dd01mlphpgyctn"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    // Create a HTML element for your custom marker
    const customMarker = document.createElement("div")
    customMarker.innerHTML = this.markersValue.marker_html
    const popup = new mapboxgl.Popup().setHTML(this.markersValue.info_window_html) // Add this

    // Pass the element as an argument to the new marker
    new mapboxgl.Marker(customMarker)
      .setLngLat([ this.markersValue.lng, this.markersValue.lat ])
      // for popup
      .setPopup(popup) // Add this
      .addTo(this.map)
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markersValue.lng, this.markersValue.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
