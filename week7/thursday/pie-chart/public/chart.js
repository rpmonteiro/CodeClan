var Chart = function(title, type, container, data, categories) {
  var chart = new Highcharts.Chart({
    chart: {
      renderTo: container,
      type: type,
    },
    credits: false,
    title: {
      text: title,
    },
    series: data,
    xAxis: categories,
  });

}