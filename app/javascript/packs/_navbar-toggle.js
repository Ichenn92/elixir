const initNavBar = () => {
    const profileButton_dom = document.getElementById("profile-button");
    const socialButton_dom = document.getElementById("social-button");
    const searchButton_dom = document.getElementById("search-button");
    const activitiesButton_dom = document.getElementById("activities-button");
    const chatButton_dom = document.getElementById("chat-button");
    const buttons = [profileButton_dom, socialButton_dom, searchButton_dom, activitiesButton_dom, chatButton_dom]
    const buttonsLength = buttons.length;
    
    const profileMenu_dom = document.getElementById("profile-menu");
    const socialMenu_dom = document.getElementById("social-menu");
    const searchMenu_dom = document.getElementById("search-menu");
    const activitiesMenu_dom = document.getElementById("activities-menu");
    const chatMenu_dom = document.getElementById("chat-menu");
    const menues = [profileMenu_dom, socialMenu_dom, searchMenu_dom, activitiesMenu_dom, chatMenu_dom]
    
    const removeAllActive = () => {
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
            if (removeAllActive()) {
                setTimeout(function(){
                    buttons[i].classList.toggle("active");
                    menues[i].classList.toggle("active-menu");
                }, 300)
            } else {
                buttons[i].classList.toggle("active");
                menues[i].classList.toggle("active-menu");
            }

        });
    }
};

export { initNavBar };