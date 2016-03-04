/**
 *
 */
define([ "userAdd" ], function(userAdd) {

    function init() {
        loadPage();
    }

    /**
     * ページ遷移メソッド
     */
    function loadPage(pagename) {

        var url = "/" + getContextPath() + "/" + pagename;
        $.ajax({
            url: url,
            dataType: "html"

        }).done(function(htmlContent) {

            $("#p002WelcomeDiv").html(htmlContent);
            if (pagename == "userAdd") {

                userAdd.init();
            }

        })
    }

    function getContextPath() {
        var fullPath = window.location.pathname;
        var contextPath = fullPath.split("/")[1];
        return contextPath;
    }

    return {
        "loadPage": loadPage
    }
});