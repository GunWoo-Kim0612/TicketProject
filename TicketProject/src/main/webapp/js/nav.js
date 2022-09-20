/**
 * 
 */ var tabs = document.querySelectorAll(".tabs_wrap ul li");
        var tab1 = document.querySelectorAll(".tab1");
        var tab2 = document.querySelectorAll(".tab2");
        var tab3 = document.querySelectorAll(".tab3");
        var tab4 = document.querySelectorAll(".tab4");
        var all = document.querySelectorAll(".item_wrap");

        tabs.forEach((tab) => {
            tab.addEventListener("click", () => {
                tabs.forEach((tab) => {
                    tab.classList.remove("active");
                })
                tab.classList.add("active");
                var tabval = tab.getAttribute("data-tabs");

                all.forEach((item) => {
                    item.style.display = "none";
                })

                if (tabval == "tab1") {
                    tab1.forEach((tab1) => {
                        tab1.style.display = "block";
                    })
                }
                else if (tabval == "tab2") {
                    tab2.forEach((tab2) => {
                        tab2.style.display = "block";
                    })
                }
                else if (tabval == "tab3") {
                    tab3.forEach((tab3) => {
                        tab3.style.display = "block";
                    })
                }
                else if (tabval == "tab4") {
                    tab4.forEach((tab4) => {
                        tab4.style.display = "block";
                    })
                }
                else {
                    item.forEach((tab1) => {
                        tab1.style.display = "block";
                    })
                }

            })
        })