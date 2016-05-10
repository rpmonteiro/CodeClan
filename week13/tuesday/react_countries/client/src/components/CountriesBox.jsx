var React = require('react');
var CountriesSelect = require('./CountriesSelect');
var CountriesInfoBox = require('./CountriesInfoBox');

var CountriesBox = React.createClass({
  getInitialState: function() {
    return { countries: [], selectedCountry: '' };
  },

  setSelectedCountry: function(country) {
    this.setState({ selectedCountry: country });
  },

  componentDidMount: function() {
    var request = new XMLHttpRequest();
    request.open('GET', 'https://restcountries.eu/rest/v1/all');
    request.onload = function() {
      var data = JSON.parse(request.responseText);
      this.setState({countries: data});
    }.bind(this)
    request.send();
  },

  render: function() {
    return (
      <div>
        <h4>CountriesBox</h4>
        <CountriesSelect
          countries={this.state.countries}
          onSelectCountry={this.setSelectedCountry}/>
        <CountriesInfoBox
          countries={this.state.countries}
          selectedCountry={this.state.selectedCountry}/>
      </div>
    );
  }
})

module.exports = CountriesBox;