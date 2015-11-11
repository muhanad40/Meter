React = require('react')
Fluxxor = require("fluxxor")

FluxMixin = Fluxxor.FluxMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin

Meter = React.createClass

  mixins: [FluxMixin, StoreWatchMixin("DataStore")]

  getStateFromFlux: ->
    flux = @getFlux()
    return {
      DataStore: flux.store("DataStore").getState()
    }

  getValue: ->
    return @state.DataStore.data.value

  render: ->
    return (
      <div className="meter">
        <div className="meter__value">{@getValue()}</div>
        <div className="meter__min">0</div>
        <div className="meter__max">200</div>
        <div className="meter__pointer icon-pointer"></div>
        <div className="meter__scale icon-scale"></div>
      </div>
    )

module.exports = Meter