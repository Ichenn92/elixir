
const initToggleChatMenu = () => {
  const button = document.getElementById("toggle-chat-menu")
  if (button) {
    button.addEventListener("click", () => {
      var menu = document.getElementById("chat-menu")
      menu = menu.classList.add("transition")
      toggleChatMenu();
    });
  };
}

const toggleChatMenu = () => {
  const button = document.getElementById("toggle-chat-menu")
  if (button) {
    const menu = document.getElementById("chat-menu")
    const texts = menu.querySelectorAll("span, p");
    const headers = menu.querySelectorAll("h3");
    
    button.classList.toggle("chat-button-center");
    menu.classList.toggle("chat-menu-close");
    texts.forEach(text => {
      text.classList.toggle("d-none");
    });
    headers.forEach(header => {
      header.classList.toggle("invisible");
    });
  }
}

export { initToggleChatMenu, toggleChatMenu };