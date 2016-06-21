define([ "common" ], function(common) {

    function init() {
        initFocus();
        initFormValidate();
        initListener();
    }
    ;

    function initFocus() {
        $("#p003UserNameTxt").first().focus();
    }
    function initFormValidate() {
        $("#p003UserAddForm").validate({
            rules: {
                username: {
                    required: true
                },
                gender: {
                    required: true
                },
                age: {
                    required: true
                },
                score: {
                    required: true
                }
            },
            messages: {
                username: {
                    required: "必须入力姓名"
                },
                gender: {
                    required: "必须入力性别"
                },
                age: {
                    required: "必须入力年龄"
                },
                score: {
                    required: "必须入力成绩"
                }
            }
        });
    }

    function initListener() {
        $("#p003UserAddBtn").on("click", function() {

            var params = {};
            params["username"] = $("#p003UserNameTxt").val();
            params["gender"] = $("#p003GenderTxt").val();
            params["age"] = $("#p003AgeTxt").val();
            params["score"] = $("#p003ScoreTxt").val();
            if (!$("#p003UserAddForm").valid()) {
                $("#p003UserAddForm").submit();
                return;
            }
            $.ajax({
                url: "/" + getContextPath() + "/userAddInit",
                type: 'POST',
                data: JSON.stringify(params),
                contentType: "application/json",
                dataType: "json",
                cache: false,
                success: function(data) {

                    if (data.code == "ok") {

                        var studentDtoList = data.result.studentDtoList;
                        createTable(studentDtoList);
                    }
                    $("#p003UserNameTxt").val("");
                    $("#p003GenderTxt").val("");
                    $("#p003AgeTxt").val("");
                    $("#p003ScoreTxt").val("");
                }
            });
        });

        $("#p003StudentSearchBtn").on("click", function() {
            var params = {};
            $.ajax({
                url: "/" + getContextPath() + "/studentList",
                type: 'POST',
                data: JSON.stringify(params),
                contentType: "application/json",
                dataType: "json",
                cache: false,
                success: function(data) {

                    if (data.code == "ok") {

                        var studentDtoList = data.result.studentDtoList;
                        createTable(studentDtoList);
                    }
                }
            });

        });

        $("#p003ClearBtn").on("click", function() {
            $("#p003UserNameTxt").val("");
            $("#p003GenderTxt").val("");
            $("#p003AgeTxt").val("");
            $("#p003ScoreTxt").val("");
        });

    }

    function createTable(studentDtoList) {
        $("#p003StudentTable").datatable({
            data: studentDtoList,
            columns: [ {
                name: "username",
                text: "用户名"
            }, {
                name: "gender",
                text: "性别"
            }, {
                name: "age",
                text: "年龄"
            }, {
                name: "score",
                text: "成绩"
            } ]
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