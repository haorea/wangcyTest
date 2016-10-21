define([ "common" ], function(common) {

    function init() {

        initStatus();
        initListener();
    }
    ;

    /**
     * 下拉初期化
     */
    function initStatus() {

        var params = {};
        $.ajax({
            url: "/" + getContextPath() + "/killing/init",
            type: 'POST',
            data: JSON.stringify(params),
            contentType: "application/json",
            dataType: "json",
            cache: false,
            success: function(data) {

                var option = $("<option value=''></option>").text("所有人");
                option.appendTo($("#p005PlayerNameSelect"));
                if (data.code == "ok") {
                    for (var i = 0; i < data.result.informationDtoList.length; i++) {
                        option = $("<option></option>").text(data.result.informationDtoList[i].playerName).val(data.result.informationDtoList[i].id);
                        $("#p005PlayerNameSelect").append(option);
                    }

                    // 胜率一览
                    $("#p005PlayerRateSearch").text("");
                    $("#p005PlayerRateSearch").text("玩家胜率查询");
                    var informationRateList = data.result.informationRateList;
                    createRateTable(informationRateList);
                }
            }
        });
    }


    /**
     * 按钮
     */
    function initListener() {

        // 检索按钮押下
        $("#p005SearchBtn").on("click", function() {
            $("#p005PlayerRateSearch").text("");
            $("#p005PlayerRateSearch").text("玩家胜率查询");
            var inforMationParam = {};
            inforMationParam["inforId"]=$("#p005PlayerNameSelect").val();
            $.ajax({
                url: "/" + getContextPath() + "/gameCountSearch",
                type: "POST",
                data: JSON.stringify(inforMationParam),
                contentType: "application/json",
                dataType: "json",
                cache: false,
                success: function(data) {
                    if (data.code == "ok") {
                        var informationDtoList = data.result.informationDtoList;
                        createRateTable(informationDtoList);
                    }
                }
            });
        });
    }

    /**
     * 创建胜率一览
     */
    function createRateTable(informationDtoList) {
        $("#p005InformationTable").show();
        $("#p005InformationTable").datatable({
            data: informationDtoList,
            columns: [ {
                name: "inforName",
                text: "用户名"
            }, {
                name: "allGamesCount",
                text: "总局数"
            }, {
                name: "successCount",
                text: "胜局"
            }, {
                name: "rate",
                text: "胜率",
                fn: rateHandler
            }, {
                name: "allWerewolfCount",
                text: "狼人场数",
            }, {
                name: "werewolfRate",
                text: "狼人胜率",
                fn: rateHandler
            }, {
                name: "allProphetCount",
                text: "预言家场数",
            }, {
                name: "prophetRate",
                text: "预言家胜率",
                fn: rateHandler
            }, {
                name: "allWitchCount",
                text: "女巫场数",
            }, {
                name: "witchRate",
                text: "女巫胜率",
                fn: rateHandler
            }, {
                name: "allHunterCount",
                text: "猎人场数",
            }, {
                name: "hunterRate",
                text: "猎人胜率",
                fn: rateHandler
            }, {
                name: "allCivilianCount",
                text: "平民场数",
            }, {
                name: "civilianRate",
                text: "平民胜率",
                fn: rateHandler
            }]
        });
    }

    function rateHandler(value, rowValue, tdDom) {

        return value + "%";
    }

    // 胜率显示
    function playerGameStatusHandler(value, rowValue, tdDom) {
        if (value == "success") {
            return "赢";
        } else if (value == "fail") {
            return "输";
        } else {
            return "平";
        }
    }

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