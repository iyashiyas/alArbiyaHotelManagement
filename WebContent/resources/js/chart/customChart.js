$(function () {
	 /* var ctx4 = document.getElementById("canvas").getContext("2d");
	    new Chart(ctx4, {type: 'doughnut', data: doughnutData, options:doughnutOptions});


	    var radarData = {
	        labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
	        datasets: [
	            {
	                label: "My First dataset",
	                backgroundColor: "rgba(220,220,220,0.2)",
	                borderColor: "rgba(220,220,220,1)",
	                data: [65, 59, 90, 81, 56, 55, 40]
	            },
	            {
	                label: "My Second dataset",
	                backgroundColor: "rgba(26,179,148,0.2)",
	                borderColor: "rgba(26,179,148,1)",
	                data: [28, 48, 40, 19, 96, 27, 100]
	            }
	        ]
	    };*/
	    
	    var PieChart = [
	                    {
	                        value: 40,
	                        color:"#fcc79e"
	                    },
	                    {
	                        value : 30,
	                        color : "#beefd2"
	                    },
	                    {
	                        value : 90,
	                        color : "#ffddfb"
	                    }

	                ];

	        var myPieChart = new Chart(document.getElementById("canvas").getContext("2d")).Pie(PieChart);



})
//Get the context of the canvas element we want to select
