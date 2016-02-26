/**
 *
 */
/*$(document).ready(function(){
    init();
});*/

require.config({

});

require([ "login" ], function(login) {
    $(function() {
        login.init();
    });
});

define([], function() {

    function init() {
        initListener();
    }
    ;

    function initListener() {
        $("#p001LoginBtn").on("click", function() {
            var params = {};
            params["username"] = $("#p001UsernameTxt").val();
            params["password"] = $("#p001UserPasswordTxt").val();

            var url = "/" + getContextPath() + "/init";

            $.ajax({
                url: url,
                type: 'POST',
                data: JSON.stringify(params),
                contentType: "application/json",
                dataType: "json",
                cache: false,
                success: function(data) {

                    if ("ok" == data.code) {
                        window.location.href = "/" + getContextPath() + "/welcome";
                    }
                }
            })

        });

        $("#p002WelcomeBtn").on("click", function() {
            window.location.href = "/" + getContextPath() + "/welcome";
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