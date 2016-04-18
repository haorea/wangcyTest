define([ "common" ], function(common) {

    function init() {
        initParams();
    }
    ;
    function initParams() {
        $("#p004RefeshBtn").on("click", function() {
            window.location.reload();
        })
    }

    $("#p004BackLoginBtn").on("click", function() {
        window.location.href = "/" + getContextPath() + "/welcome";
    })

    function getContextPath() {
        var fullPath = window.location.pathname;
        var contextPath = fullPath.split("/")[1];
        return contextPath;
    }

    return {
        "init": init
    }
});