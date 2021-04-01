const setHeightOfScreen = () => {
    const doc = document.documentElement
    doc.style.setProperty('$app-height', `${window.innerHeight}px`);
}