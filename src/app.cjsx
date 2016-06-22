React = require 'react'

module.exports = class extends React.Component
  
  constructor:(props) ->

  handleClick:(e)=>
    alert("Hi "+@state.name)

  render:->
    <div id="foo">
      <h1>Hello {@state.name || 'World'}</h1>
      <input placeholder="your name" value={@state.name} onInput={@linkState('name')} />
      <button onClick={@handleClick}> Click Me!</button>
    </div>