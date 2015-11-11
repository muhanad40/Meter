currencySymbols = {
  GBP: "&pound;"
  USD: "$"
  EUR: "€"
  CHF: "CHF"
}

module.exports = {

  _isCurrencyFormat: (data)->
    if data.format != undefined and data.format == "currency" and currencySymbols.hasOwnProperty(data.unit)
      return true
    else
      return false

  _getCurrencySymbol: (unit)->
    if currencySymbols.hasOwnProperty(unit)
      return currencySymbols[unit]
    else
      return false
  
  getValue: (data)->
    if @_isCurrencyFormat(data)
      return @_getCurrencySymbol(data.unit) + data.value
    else
      return parseInt(data.value)
  
  getMinValue: (data)->
    if @_isCurrencyFormat(data)
      return @_getCurrencySymbol(data.unit) + data.min
    else
      return parseInt(data.min)
  
  getMaxValue: (data)->
    if @_isCurrencyFormat(data)
      return @_getCurrencySymbol(data.unit) + data.max
    else
      return parseInt(data.max)

  calculatePointerDegrees: (data)->
    if data.value > data.max
      return 180
    else if data.value < data.min
      return 0
    percentage = (data.value / data.max) * 100
    degrees = (percentage / 100) * 180
    return degrees

}