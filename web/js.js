window.addEventListener('message', function (event) {
    let action = event.data.action;

    if (action == "show") {
        $("body").fadeIn(500)
    } else if (action == "hide") {
        $("body").fadeOut(500)
    }  else if (action == "update") {

        if (event.data.percentage == 100) {
            $(".percentage").css("transition", "1s")
        } else {
            $(".percentage").css("transition", "0.2s")
        }

        if (event.data.percentage > 100)
            event.data.percentage = 100
            
        $(".right").html(event.data.percentage + "%")
        $(".percentage").css("width", event.data.percentage + "%")
    } 
});