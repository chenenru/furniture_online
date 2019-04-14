let c1 = document.querySelector("#chart-composite-1");

let gdp_date = [
	[
		123.267, 321.87, 3211.719, 1231.015, 12332.966, 3321.005,
		1231.892, 1231.773, 1233.312,1233.091, 3331.609, 3321.489,
		3312.837, 12312.315, 12331.482, 12132.11, 123132.28, 123123.55,
		123.48],
];

let barCompositeData = {
	labels: ["1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011","2012", "2013", "2014", "2015", "2016", "2017"],
	datasets: [
		{
			name: "中国历年GDP值",
			values: gdp_date[0],
		},
	]
};

let barCompositeChart = new Chart (c1, {
	title: "各种类型的家具销售利润(单位千元)",
	data: barCompositeData,
	type: 'bar',
	height: 550,
	colors: ['blue'],
	valuesOverPoints: 0,
	axisOptions: {
		xAxisMode: 'tick'
	},
	barOptions: {
		stacked: 1
	},

});
