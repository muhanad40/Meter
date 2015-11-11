currencySymbols = {
  GBP: "&pound;"
  USD: "$"
  EUR: "€"
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

}