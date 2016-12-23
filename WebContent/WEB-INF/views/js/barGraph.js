define([ "common" ], function(common) {

    function init() {

        initGraphData();

    }
    ;
    // 初期化图表数据
    function initGraphData() {
        var params = {};
        $.ajax({
            url: "/" + getContextPath() + "/killing/barGraphInit",
            type: 'POST',
            data: JSON.stringify(params),
            contentType: "application/json",
            dataType: "json",
            cache: false,
            success: function(data) {
                if (data.code == "ok") {
                    var index = 0;
                    var informationRateList = data.result.informationRateList;
                    var inforNameTmp = [];
                    var rateTmp = [];
                    $.each(informationRateList, function(index, item) {
                        var inforName = [ index + 1, item.inforName ];
                        var rate = [ index + 1, item.rate ];
                        rateTmp.push(rate);
                        inforNameTmp.push(inforName);

                    });
                    initBarGraph(inforNameTmp, rateTmp);

                }
            }
        });
    }

    // 柱状图
    function initBarGraph(inforNameTmp, rateTmp) {
        var options = {
            series: {
                bars: {
                    show: !0,
                    barWidth: .2,
                    fill: !0,
                    fillColor: {
                        colors: [ {
                            opacity: .8
                        }, {
                            opacity: .8
                        } ]
                    }
                }
            },
            xaxis: {
                tickDecimals: 0,
                ticks: inforNameTmp
            },
            yaxis:{ tickDecimals: 2},
            colors: [ "#1ab394" ],
            grid: {
                color: "#999999",
                hoverable: !0,
                clickable: !0,
                tickColor: "#D4D4D4",
                borderWidth: 0
            },
            legend: {
                show: !1
            },
            tooltip: true,
            tooltipOpts: {
                content: "%y" + "%"
            }
        }
        var barData = [ {
            label: "bar",
            data: rateTmp,
            color: "red"
        } ];
        $.plot($("#flot-bar-chart"), barData, options);
    }
    ;
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