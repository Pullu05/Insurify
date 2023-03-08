
     
console.log("${AvgPrem}");

var data = {
    labels: ["Coverage", "Premium", "Liability"],
    datasets: [
        {
            label: "Average Sum",
            backgroundColor: 'rgba(80, 100, 255, 0.2)',
            borderColor: '#000080',
            borderWidth: 1,
            data: ["", 35000, 5580]
        }
    ]
};
var ctx = document.getElementById("carInsuranceChart");
var myChart = new Chart(ctx, {
    type: 'bar',
    data: data,
    options: {
        legend: {display: false},
        title: {
            display: true,
            text: 'Average Car Insurance Amount'
        }
    }
});
myChart.options.scales = {
    xAxes: [{
      barPercentage: 0.6,
      categoryPercentage: 0.5
    }],
    yAxes: [{
            ticks: {
                beginAtZero: true
//                callback: function (value, index, values) {
//                    return '$' + value;
//                }
            },
            scaleLabel: {
                display: true,
                labelString: 'Average Premium'
            }
        }]
};
