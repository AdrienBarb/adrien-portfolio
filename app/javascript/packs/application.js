// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


first_sentence = document.querySelector('.visible')
console.log(first_sentence)
second_sentence = first_sentence.nextElementSibling
console.log(second_sentence)



  setTimeout(function(){
    first_sentence.classList.remove('visible');
  },2000)

    setTimeout(function(){
    second_sentence.classList.add('visible')
  },2000)

// a = document.querySelectorAll('.sentence-show')

// console.log(a)

// document.querySelector('#sentence').style.display = "block";
// document.querySelector('#sentence').style.opacity = 1;

