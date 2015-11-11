React = require("react")
ReactDOM = require('react-dom')
Meter = require("./components/Meter.cjsx")
DataStore = require("./stores/DataStore.cjsx")
Fluxxor = require("fluxxor")
CartActions = require("./actions/MeterActions.cjsx")

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
    console.log 'refresh'

  render: ->
    return (
      <section className="wrapper">
        <Meter />
        <a onClick={@refreshMeter} href="#" className="refresh-button">Refresh</a>
        <p className="wrapper__note">Press the button above to refresh the gecko-o-meter</p>
      </section>
    )

stores = {
  DataStore: new DataStore()
}

flux = new Fluxxor.Flux(stores, CartActions);

ReactDOM.render(
  <App flux={flux} />,
  document.getElementById('meter-app')
)