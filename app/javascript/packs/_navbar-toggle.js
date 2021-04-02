const initNavBar = () => {
    const profileButton_dom = document.getElementById("profile-button");
    const activitiesButton_dom = document.getElementById("activities-button");
    const buttons = [profileButton_dom, activitiesButton_dom]
    const buttonsLength = buttons.length;
    
    const profileMenu_dom = document.getElementById("profile-menu");
    const activitiesMenu_dom = document.getElementById("activities-menu");
    const menues = [profileMenu_dom, activitiesMenu_dom]
    
    const closeButtons_dom = document.querySelectorAll(".close-button");

    const closeSearchButton_dom = document.getElementById("close-search-bar");
    const body_dom = document.querySelector(".wrapper-body");


    closeSearchButton_dom.addEventListener("click", e => {
        removeAllActive();
    });
    
    closeButtons_dom.forEach(button => {
        button.addEventListener("mouseenter", e => {
            button.classList.remove("far");
            button.classList.add("fas");
        });
        button.addEventListener("mouseleave", e => {
            button.classList.remove("fas");
            button.classList.add("far");
        });
        button.addEventListener("click", e => {
            removeAllActive();
        });
    });

    const removeAllActive = () => {
        body_dom.removeEventListener('click', removeAllActive);
        let didChange = false;
        for (let i = 0; i < buttonsLength; i++) {
            if (buttons[i].classList.contains("active")) {
                didChange = true
                buttons[i].classList.remove("active");
                menues[i].classList.remove("active-menu");
            }
        }
        return didChange;
    };

    for (let i = 0; i < buttonsLength; i++) {
        buttons[i].addEventListener("click", (e) => {
            if (removeAllActive()) { // if no sidebar is open, then the animation start from the beginning
                setTimeout(function(){
                    buttons[i].classList.toggle("active");
                    menues[i].classList.toggle("active-menu");
                }, 300)
            } else {
                buttons[i].classList.toggle("active");
                menues[i].classList.toggle("active-menu");
            }
            setTimeout(function(){
                body_dom.addEventListener('click', removeAllActive);
            }, 10);
        });
    }
};

export { initNavBar };