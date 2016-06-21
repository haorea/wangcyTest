define([ "common" ], function(common) {

    function init() {
        initFocus();
        initFormValidate();
        initListener();
    };

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

                        alert("登陆成功了,返回查询画面")
                    }
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