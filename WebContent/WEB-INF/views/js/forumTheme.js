define([ "common" ], function(common) {

    function init() {
    };
    /**
     * 取路径
     */
    function getContextPath() {
        var fullPath = window.location.pathname;
        var contextPath = fullPath.split("/")[1];
        return contextPath;
    }
    return {
        "init": init
    }
});