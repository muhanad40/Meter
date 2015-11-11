Fluxxor = require("fluxxor")
MeterConstants = require("../constants/MeterConstants.cjsx")

module.exports = Fluxxor.createStore(

  initialize: ->
    @data = {
      "value": 34,
      "min": 0,
      "max": 200,
      "format": "currency",
      "unit": "GBP"
    }
    @bindActions(
      MeterConstants.REFRESH_METER, @refreshMeter
    )

  refreshMeter: ->
    request = new XMLHttpRequest();
    request.onreadystatechange = (e) =>
      if request.readyState != 4
        return
      if request.status == 200
        @data = JSON.parse(request.responseText)
      else
        console.warn('error')
    request.open('GET', 'https://widgister.herokuapp.com/challenge/frontend');
    request.send();
    @emit("change")

  getState: ->
    return {
      data: @data
    }

)