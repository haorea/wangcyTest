/**
 *
 */
define([],function() {

    /**
     * ページ遷移メソッド
     */
    function loadPage() {

        var args = Array.prototype.slice.call(arguments);
        var pageName = args.shift();

        var url = "/" + getContextPath() + "/" + pageName ;
        $.ajax({
            url: url,
            dataType: "html"
        }).done(function(htmlContent) {
            $("#p002WelcomeDiv").html(htmlContent);
            initPage(pageName, args);

        })
    }
    function initPage(pageModuleName, args) {
        require([ pageModuleName ], function(pageModule) {
            pageModule.init.apply(this, args);
        });
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