Fluxxor = require("fluxxor")

MeterActions = require("../app/actions/MeterActions.cjsx")

meterLogic = require("../app/meterLogic.coffee")

testData = {
  GBP: {
    "value": 34,
    "min": 0,
    "max": 200,
    "format": "currency",
    "unit": "GBP"
  }
  USD: {
    "value": 34,
    "min": 0,
    "max": 200,
    "format": "currency",
    "unit": "USD"
  }
  EUR: {
    "value": 34,
    "min": 0,
    "max": 200,
    "format": "currency",
    "unit": "EUR"
  }
  UNKNOWN: {
    "value": 34,
    "min": 0,
    "max": 200
  }
}

describe("Getting the meter value according to give data", ->

  it("should return the value in GBP format", ->
    expect(meterLogic.getValue(testData.GBP)).toEqual("&pound;34")
  )

  it("should return the value in USD format", ->
    expect(meterLogic.getValue(testData.USD)).toEqual("$34")
  )

  it("should return the value in EUR format", ->
    expect(meterLogic.getValue(testData.EUR)).toEqual("€34")
  )

  it("should return 'false' for an unknown currency", ->
    expect(meterLogic.getValue(testData.UNKNOWN)).toEqual(false)
  )

)