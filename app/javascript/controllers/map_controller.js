import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      // styling for map 🚨
      style: "mapbox://styles/lucasinesmaria/clf74ogmq00dd01mlphpgyctn"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  // private method in JavaScript are prepend with a #
  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.show_html_erb) // Add this

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

       // Pass the element as an argument to the new marker
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup) // Add this
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
