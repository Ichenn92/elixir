const initSearchNavbarToggle = () => {
    const closeSearchButton_dom = document.getElementById("close-search-bar");
    const openSearchButton_dom = document.getElementById("open-search-bar");
    const formSearchNavbar_dom = document.querySelector("#open-search-bar form");

    const toggleSearchBar = () => {
        openSearchButton_dom.classList.toggle("d-none");
        closeSearchButton_dom.classList.toggle("d-none");
    };



    closeSearchButton_dom.addEventListener("click", e => {
        toggleSearchBar();
        setTimeout(function(){
            formSearchNavbar_dom.style.width="80vw";
            document.addEventListener('click', function _listener(event) {
                var isClickInsideElement = openSearchButton_dom.contains(event.target);
                if (!openSearchButton_dom.classList.contains("d-none") && !isClickInsideElement) {
                    formSearchNavbar_dom.style.width="110px";
                    setTimeout(function() {
                        toggleSearchBar();
                        document.removeEventListener('click', _listener);
                    }, 1000)
                }
            });
        }, 10)

        
    });
}

export { initSearchNavbarToggle };