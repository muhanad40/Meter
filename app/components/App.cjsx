React = require("react")
Fluxxor = require("fluxxor")
Meter = require("../components/Meter.cjsx")

FluxMixin = Fluxxor.FluxMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin

App = React.createClass

  mixins: [FluxMixin, StoreWatchMixin("DataStore")]

  getStateFromFlux: ->
    flux = @getFlux()
    return {
      DataStore: flux.store("DataStore")
    }

  refreshMeter: (e)->
    e.preventDefault()
    @getFlux().actions.refreshMeter()

  render: ->
    return (
      <section className="wrapper">
        <Meter />
        <a onClick={@refreshMeter} href="#" className="refresh-button">Refresh</a>
        <p className="wrapper__note">Press the button above to refresh the meter</p>
      </section>
    )

module.exports = App