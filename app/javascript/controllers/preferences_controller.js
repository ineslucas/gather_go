// From https://github.com/jreis13/ThirstTrail/blob/master/app/javascript/controllers/preferences_controller.js
// 🥳 NEEDS TO BE CHANGED TO FIT OUR CONTROLLERS

// import { Controller } from "stimulus"
// import '@splidejs/splide/dist/css/splide.min.css';

// import Splide from '@splidejs/splide';

// export default class extends Controller {
//   static targets = ['option', 'bar'];

//   connect() {
//     console.log(this.barTarget);
//     const options = {
//       type: 'slide',
//     };

//     this.splide = new Splide('.splide', options);

//     this.splide.on('mounted move', () => {
//       var end = this.splide.Components.Controller.getEnd() + 1;
//       this.barTarget.style.width = String(100 * (this.splide.index + 1) / end) + '%';
//     });

//     this.splide.mount();
//   };

//   preferenceSelected() {
//     this.splide.go('>');
//   }
// }
