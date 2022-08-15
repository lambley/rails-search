import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-list"
export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]

  connect() {
    console.log('refresh list connected');
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, {
      method: 'GET',
      headers: {
        'Accept': 'text/plain'
        }
      })
      .then(response => {
        response.text();
      })
      .then((data) => {
        this.listTarget.innerHTML = data;
      })
  }
}
