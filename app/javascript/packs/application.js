// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { setHeightOfScreen } from './_height-of-screen';
import { initDatetimePicker } from './_datetime-picker';
import { initNavBar } from './_navbar-toggle';
import { initSearchNavbarToggle } from './_search-navbar-toggle';
import { initChatgroupCable } from '../channels/group_channel';
import { initScrollFromBottom } from './_div-scroll-from-bottom';
import { initToggleChatMenu, toggleChatMenu } from './_toggle-chat-menu';

window.addEventListener('resize', setHeightOfScreen)

document.addEventListener('turbolinks:load', () => {
  initNavBar();
  initSearchNavbarToggle();
  initChatgroupCable();
  initDatetimePicker();
  initScrollFromBottom();
  initToggleChatMenu();
  if (window.innerWidth < 992) {
    toggleChatMenu();
  }
});

