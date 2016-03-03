require.config({
    paths: {
    }
});

require(["welcome" ,"userAdd"], function(welcome,userAdd) {
    $(function() {
        welcome.init();
        userAdd.init();
    });
});