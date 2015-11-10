React = require("react")
Meter = require("./components/Meter.cjsx")

App = React.createClass

  render: ->
    return (
      <section className="wrapper">
        <Meter />
        <a href="#" className="refresh-button">Refresh</a>
        <p className="wrapper__note">Press the button above to refresh the gecko-o-meter</p>
      </section>
    )

module.exports = App

React.render(
  <App />,
  document.getElementById('meter-app')
)