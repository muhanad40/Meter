MeterConstants = require("../constants/MeterConstants.cjsx")

module.exports = {
  refreshMeter: ->
    @dispatch(MeterConstants.REFRESH_METER)
}