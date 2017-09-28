require.config({
    "common": "common",
    paths: {

    }
});

require([ "welcome", "userAdd", "result", "ssq", "datatable", "killing", "killerAdd", "forum", "forumTheme" ],
        function(welcome, userAdd, result, ssq, datatable, killing, killerAdd, forum,forumTheme) {
    $(function() {
        welcome.init();
        userAdd.init();
        result.init();
        ssq.init();
        datatable.extend();
        killing.init();
        killerAdd.init();
        forum.init();
        forumTheme.init();
    });
});