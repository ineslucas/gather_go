import { Controller } from "@hotwired/stimulus"

const initPinterest = () => {
  const a = window;
  const b = document;
  const c = { mainUrl:"https://assets.pinterest.com/js/pinit_main.js" };

  var d,e,f;

  d= "PIN_"+~~((new Date).getTime()/864e5),a[d]?a[d]+=1:(a[d]=1,a.setTimeout(function(){e=b.getElementsByTagName("SCRIPT")[0],f=b.createElement("SCRIPT"),f.type="text/javascript",f.async=!0,f.src=c.mainUrl+"?"+Math.random(),e.parentNode.insertBefore(f,e)},10))
}

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
        initPinterest();
      })

  }
}
