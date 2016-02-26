/**
 *
 */
/*$(document).ready(function(){
    init();
});*/

require.config({

});

require([ "welcome" ], function(welcome) {
    $(function() {
        welcome.init();
    });
});

define([], function() {

    function init() {
        initListener();
    }
    ;

    function initListener() {
        $("#p003BackLoginBtn").on("click", function() {
            window.location.href = "/" + getContextPath() + "/login";
        });
    }

    function getContextPath() {
        var fullPath = window.location.pathname;
        var contextPath = fullPath.split("/")[1];
        return contextPath;
    }

    return {
        "init": init
    }
});