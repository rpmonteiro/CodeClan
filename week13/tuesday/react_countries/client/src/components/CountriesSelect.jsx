var React = require('react');

var CountriesSelect = React.createClass({
  getInitialState: function() {
    return { selectedIndex: null }
  },

  populateOptions: function() {
    return this.props.countries.map(function(country, index) {
      return <option value={index} key={index}>{country.name}</option>;
    })
  },

  handleChange: function(e) {
    e.preventDefault();
    var newIndex = e.target.value;
    this.setState({ selectedIndex: newIndex });
    this.props.onSelectCountry(this.props.countries[newIndex]);
  },

  render: function() {
    return (
      <div>
        <h4>CountriesSelect</h4>
        <select value={this.state.selectedIndex} onChange={this.handleChange}>
          {this.populateOptions()}
        </select>
      </div>
    );
  }
})

module.exports = CountriesSelect;