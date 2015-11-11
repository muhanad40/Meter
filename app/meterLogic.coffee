currencySymbols = {
  GBP: {
    type: "prepend"
    symbol: "&pound;"
  }
  USD: {
    type: "prepend"
    symbol: "$"
  }
  EUR: {
    type: "prepend"
    symbol: "&euro;"
  }
  CHF: {
    type: "append"
    symbol: "CHF"
  }
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

  _formatCurrencyValue: (type, value, symbol)->
    if type == "prepend"
      return "#{symbol}#{value}"
    else if type == "append"
      return "#{value} #{symbol}"
  
  getValue: (data)->
    if @_isCurrencyFormat(data)
      currency = currencySymbols[data.unit]
      return @_formatCurrencyValue(currency.type, data.value, currency.symbol)
    else
      return parseInt(data.value)
  
  getMinValue: (data)->
    if @_isCurrencyFormat(data)
      currency = currencySymbols[data.unit]
      return @_formatCurrencyValue(currency.type, data.min, currency.symbol)
    else
      return parseInt(data.min)
  
  getMaxValue: (data)->
    if @_isCurrencyFormat(data)
      currency = currencySymbols[data.unit]
      return @_formatCurrencyValue(currency.type, data.max, currency.symbol)
    else
      return parseInt(data.max)

  calculatePointerDegrees: (data)->
    if data.value > data.max
      return 180
    else if data.value < data.min
      return 0
    max = data.max - data.min
    percentage = (data.value / max) * 100
    degrees = parseInt((percentage / 100) * 180)
    if degrees > 180
      return 180
    else if degrees < 0
      return 0
    return degrees

}