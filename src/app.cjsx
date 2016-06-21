React = require 'react'

module.exports = class extends React.Component
  
  constructor:(props) ->

  handleClick:(e)->
    alert("hi!")

  render:->
    <div id="foo">
      <h1>Hello World</h1>
      <button onClick={@handleClick}> Click Me</button>
    </div>