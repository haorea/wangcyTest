require.config({
    paths: {
    }
});

require(["welcome" ,"userAdd","result"], function(welcome,userAdd,result) {
    $(function() {
        welcome.init();
        userAdd.init();
        result.init();
    });
});