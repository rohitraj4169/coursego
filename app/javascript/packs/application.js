// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
Rails.start()
Turbolinks.start()
ActiveStorage.start()
import "youtube"
import "@fortawesome/fontawesome-free/css/all.css"
require('stylesheets/application.css.scss')
require("trix")
require("@rails/actiontext")

// import "../trix_editor_overrides"

//  require ('video-js')

// import videojs from 'video-js'
// import 'video.js/dist/video-js.css'

// let videoPlayer = video-js(document.getElementById('my-video'), {
//     controls: true,
//     playbackRates: [0.5, 1, 1.5],
//     autoplay: false,
//     fluid: true,
//     preload: false,
//     autoplay: false,
//     liveui: true,
//     responsive: true,
//     loop: false,
//     poster: "https://i.imgur.com/EihmtGG.jpg"
// })
//   videoPlayer.addClass('video-js')
//   videoPlayer.addClass('vjs-big-play-centered')

