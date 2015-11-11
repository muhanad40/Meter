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
  CHF: {
    "value": 34,
    "min": 0,
    "max": 200,
    "format": "currency",
    "unit": "CHF"
  }
  DIFF_RANGE: {
    "value": 153,
    "min": 53,
    "max": 436
  }
  UNKNOWN: {
    "value": 34,
    "min": 0,
    "max": 200
  }
  TOO_MUCH: {
    "value": 351,
    "min": 0,
    "max": 200
  }
  TOO_LITTLE: {
    "value": 1,
    "min": 10,
    "max": 200
  }
}

describe("Getting the meter value according to given data", ->

  it("should return the value in GBP format", ->
    expect(meterLogic.getValue(testData.GBP)).toEqual("&pound;34")
  )

  it("should return the value in USD format", ->
    expect(meterLogic.getValue(testData.USD)).toEqual("$34")
  )

  it("should return the value in EUR format", ->
    expect(meterLogic.getValue(testData.EUR)).toEqual("€34")
  )

  it("should return the value as is for non-currency values", ->
    expect(meterLogic.getValue(testData.UNKNOWN)).toEqual(34)
  )

  it("should return the value in CHF format", ->
    expect(meterLogic.getValue(testData.CHF)).toEqual("34 CHF")
  )

)

describe("Getting the min and max values of a given meter data based on format", ->

  it("should return the 'min' value in GBP for GBP format", ->
    expect(meterLogic.getMinValue(testData.GBP)).toEqual("&pound;0")
  )

  it("should return the 'max' value in GBP for GBP format", ->
    expect(meterLogic.getMaxValue(testData.GBP)).toEqual("&pound;200")
  )

  it("should return the 'min' value in USD for USD format", ->
    expect(meterLogic.getMinValue(testData.USD)).toEqual("$0")
  )

  it("should return the 'max' value in USD for USD format", ->
    expect(meterLogic.getMaxValue(testData.USD)).toEqual("$200")
  )

  it("should return the 'min' value in EUR for EUR format", ->
    expect(meterLogic.getMinValue(testData.EUR)).toEqual("€0")
  )

  it("should return the 'max' value in EUR for EUR format", ->
    expect(meterLogic.getMaxValue(testData.EUR)).toEqual("€200")
  )

  it("should return the 'min' value for a non-currency value", ->
    expect(meterLogic.getMinValue(testData.UNKNOWN)).toEqual(0)
  )

  it("should return the 'max' value for a non-currency value", ->
    expect(meterLogic.getMaxValue(testData.UNKNOWN)).toEqual(200)
  )

)

describe("Pointer rotation degree caculation", ->

  it("should calculate rotation degree based on given data", ->
    expect(meterLogic.calculatePointerDegrees(testData.DIFF_RANGE)).toEqual(71)
  )

  it("should not exceed the max value", ->
    expect(meterLogic.calculatePointerDegrees(testData.TOO_MUCH)).toEqual(180)
  )

  it("should not go below the min value", ->
    expect(meterLogic.calculatePointerDegrees(testData.TOO_LITTLE)).toEqual(0)
  )

)