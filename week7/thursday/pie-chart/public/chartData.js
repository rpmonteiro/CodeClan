var ChartData = function() {
  this.pie = [{
      name: "Pokemon Type",
      data: [
      {
        name: 'Fire',
        y: 74,
        color: '#ffac33'
      },
      {
        name: 'Water',
        y: 25,
        color: '#73b7ff',
        sliced: true
      },
      {
        name: "Grass",
        y: 1,
        color: "#00ba2f"
      }]
    }],
    this.series = [],
    this.months = {
      categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',]
    }
}