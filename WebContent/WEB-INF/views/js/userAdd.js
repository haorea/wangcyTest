define([ "common" ], function(common) {

    function init() {
        initFocus();
        initFormValidate();
        initListener();
    }
    ;
    // 焦点
    function initFocus() {
        $("#p003UserNameTxt").first().focus();
    }
    // 校验
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
        // 登录按钮
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
        // 检索按钮
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
        // 清除按钮
        $("#p003ClearBtn").on("click", function() {
            $("#p003UserNameTxt").val("");
            $("#p003GenderTxt").val("");
            $("#p003AgeTxt").val("");
            $("#p003ScoreTxt").val("");
        });

    }
    // 创建一览
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
            }, {
                name: "delete",
                text: "删除",
                fn: deleteStudent
            } ]
        });
    }
    // 行点击
    function rowClickCallback(rowValue, trDom) {
        var studentId = rowValue.studentId;
    }

    // 删除
    function deleteStudent(value, rowValue, tdDom) {
        var deleteBtn = $("<input type='button' id='deleteBtn' value='删除' />");
        var studentId = rowValue.studentId;
        deleteBtn.appendTo(tdDom);

        deleteBtn.off("click").on("click", function() {
            $.ajax({
                url: "/" + getContextPath() + "/studentDel",
                type: "POST",
                data: JSON.stringify({
                    "studentId": studentId
                }),
                contentType: "application/json",
                dataType: "json",
                cache: false,
                success: function(data) {

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
                                alert("删除成功 !!!");
                            }
                        }
                    });

                }
            });
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