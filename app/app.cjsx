React = require('react')
ReactDOM = require('react-dom')
App = require("./components/App.cjsx")
DataStore = require("./stores/DataStore.cjsx")
Fluxxor = require("fluxxor")
MeterActions = require("./actions/MeterActions.cjsx")

stores = {
  DataStore: new DataStore()
}

flux = new Fluxxor.Flux(stores, MeterActions);

ReactDOM.render(
  <App flux={flux} />,
  document.getElementById('meter-app')
)