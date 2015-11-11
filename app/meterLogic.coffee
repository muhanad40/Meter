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
      return data.value

}