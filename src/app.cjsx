React = require 'preact-compat'

module.exports = class extends React.Component
  
  constructor:(props) ->

  handleClick:(e)->
    alert("hi!")

  render:->
    <div id="foo">
      <span>Hello, world 2</span>
      <button onClick={@handleClick}> Click Me</button>
    </div>