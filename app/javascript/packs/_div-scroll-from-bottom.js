const initScrollFromBottom = () => {
  const scrollBottomDiv = document.getElementById("scroll-from-bottom");
  if (scrollBottomDiv) {
    scrollBottomDiv.scrollTop = scrollBottomDiv.scrollHeight;
  }
}
export { initScrollFromBottom };
