var React = require('react');

var CountriesInfoBox = React.createClass({
  renderCountry: function(country) {
    return (
      <div key={country.name}>
        <p>Name: {country.name}</p>
        <p>Population: {country.population}</p>
        <p>Area: {country.area}</p>
      </div>
    )
  },

  renderNeighbourCountries: function(neighbours) {
    if (neighbours) {
      return neighbours.map(function(alpha3Code, index) {
        for (var i = 0; i < this.props.countries.length; i++) {
          if(this.props.countries[i].alpha3Code === alpha3Code) {
            return this.renderCountry(this.props.countries[i]);
          }
        }
      }.bind(this))
    }
  },

  render: function() {
    return (
      <div>
        {this.renderCountry(this.props.selectedCountry)}
        {this.renderNeighbourCountries(this.props.selectedCountry.borders)}
      </div>
    );
  }
})

module.exports = CountriesInfoBox;