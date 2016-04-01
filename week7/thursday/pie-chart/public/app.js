window.onload = function() {
  var data = new ChartData();
  var container = new ChartContainer();
  var types = new ChartTypes();

  var title = "Pokemon I've caught";
  new Chart(title, types.pie, container.pie, data.pie);
  new Chart(title, types.line, container.line, data.series, data.months)
}