/* ====== Chart ====== */

(function () {
    "use strict";

    function newrevenueChart() {
        // Lấy dữ liệu từ biến toàn cục được đặt trong JSP
        var revenueData = window.revenueData || [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        var ordersData = window.ordersData || [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        var customersData = window.customersData || [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

        // Chuyển đổi revenueData sang đơn vị k$
        var revenueDataK = revenueData.map(value => parseFloat((value / 1000).toFixed(2)));

        var options = {
            chart: {
                height: 365,
                type: 'line',
                stacked: false,
                foreColor: '#373d3f',
                sparkline: {
                    enabled: false
                },
                dropShadow: {
                    enabled: true,
                    top: 5,
                    left: 5,
                    blur: 3,
                    color: '#000',
                    opacity: 0.1
                },
                toolbar: {
                    show: false
                }
            },
            dataLabels: {
                enabled: false
            },
            series: [
                {
                    name: 'Revenue (k$)',
                    data: revenueDataK
                }, {
                    name: 'Orders',
                    data: ordersData
                }, {
                    name: 'Customers',
                    data: customersData
                },
            ],
            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '20%',
                }
            },
            stroke: {
                width: [3, 2, 2],
                curve: "smooth",
            },
            fill: {
                opacity: [1, 1, 1],
                gradient: {
                    inverseColors: false,
                    shade: 'light',
                    type: "vertical",
                    opacityFrom: 0.45,
                    opacityTo: 0.05,
                    stops: [50, 100, 100, 100]
                }
            },
            colors: ["#556fbd", "#50d1f8", "#5caf90"],
            xaxis: {
                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                axisTicks: {
                    show: false
                },
                axisBorder: {
                    show: false
                }
            },
            yaxis: {
                labels: {
                    formatter: function (val) {
                        return val;
                    }
                },
                title: {
                    text: "Value"
                }
            },
            tooltip: {
                shared: true,
                intersect: false,
                y: {
                    formatter: function (y, { seriesIndex }) {
                        if (seriesIndex === 0) {
                            return "$" + y + "k";
                        }
                        return y;
                    }
                }
            },
            legend: {
                show: true,
                horizontalAlign: "center",
                offsetX: 0,
                offsetY: -5,
                markers: {
                    width: 15,
                    height: 10,
                    radius: 6
                },
                itemMargin: {
                    horizontal: 10,
                    vertical: 0
                }
            },
            grid: {
                show: false,
                xaxis: {
                    lines: {
                        show: false
                    }
                },
                yaxis: {
                    lines: {
                        show: false
                    }
                },
                padding: {
                    top: 0,
                    right: -2,
                    bottom: 15,
                    left: 0
                },
            },
            responsive: [{
                breakpoint: 480,
                options: {
                    chart: {
                        height: '250px',
                    },
                    yaxis: {
                        show: false,
                    },
                }
            }]
        };

        var chart = new ApexCharts(document.querySelector("#newrevenueChart"), options);
        chart.render();
    }

    // Chạy khi DOM đã sẵn sàng
    document.addEventListener("DOMContentLoaded", function () {
        newrevenueChart();
    });

})();