React = require('react')

Meter = React.createClass

  render: ->
    return (
      <div className="meter">
        <div className="meter__value">£34</div>
        <div className="meter__min">0</div>
        <div className="meter__max">200</div>
        <div className="meter__pointer icon-pointer"></div>
        <div className="meter__scale icon-scale"></div>
      </div>
    )

module.exports = Meter