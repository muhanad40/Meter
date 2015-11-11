currencySymbols = {
  GBP: "&pound;"
  USD: "$"
  EUR: "€"
}

module.exports = {
  
  getValue: (data)->
    if data.format != undefined and data.format == "currency" and currencySymbols.hasOwnProperty(data.unit)
      return currencySymbols[data.unit] + data.value
    else
      return parseInt(data.value)
  
  getMinValue: (data)->
    if data.format != undefined and data.format == "currency" and currencySymbols.hasOwnProperty(data.unit)
      return currencySymbols[data.unit] + data.min
    else
      return parseInt(data.min)
  
  getMaxValue: (data)->
    if data.format != undefined and data.format == "currency" and currencySymbols.hasOwnProperty(data.unit)
      return currencySymbols[data.unit] + data.max
    else
      return parseInt(data.max)

}