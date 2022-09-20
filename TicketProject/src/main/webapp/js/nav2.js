/**
 * 
 */ var tabs2 = document.querySelectorAll(".tabs_wrap2 ul li");
        var placetab1 = document.querySelectorAll(".placetab1");
        var placetab2 = document.querySelectorAll(".placetab2");
        var all2 = document.querySelectorAll(".item_wrap2");

        tabs2.forEach((tab) => {
            tab.addEventListener("click", () => {
                tabs2.forEach((tab) => {
                    tab.classList.remove("active");
                })
                tab.classList.add("active");
                var tabval2 = tab.getAttribute("data-tabs");

                all2.forEach((item) => {
                    item.style.display = "none";
                })

                if (tabval2 == "placetab1") {
                	placetab1.forEach((placetab1) => {
                		placetab1.style.display = "block";
                    })
                }
                else if (tabval2 == "placetab2") {
                	placetab2.forEach((placetab2) => {
                		placetab2.style.display = "block";
                    })
                }
                else {
                    item.forEach((placetab1) => {
                    	placetab1.style.display = "block";
                    })
                }

            })
        })