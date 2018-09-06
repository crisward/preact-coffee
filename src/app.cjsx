React = require 'react'

module.exports = class extends React.Component
  
  constructor:(props) ->

  handleClick:(e)=>
    alert("Hi "+@state.name)

  handleChange:(e)=>
    @setState({name:e.target.value})

  render:->
    <div id="foo">
      <h1>Hi {@state.name || 'World'}</h1>
      <input placeholder="your name" value={@state.name} onInput={(e)=> @handleChange(e)} />
      <button onClick={@handleClick}> Click Me!</button>
    </div>