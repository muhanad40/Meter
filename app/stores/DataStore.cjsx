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

  getState: ->
    return {
      data: @data
    }

)