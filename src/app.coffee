import React from 'react'
import Counter from './hook'

module.exports = class extends React.Component
  
  constructor:(props) ->
    super(props)

  handleClick:(e)=>
    alert("Hi "+@state.name)

  handleChange:(e)=>
    @setState({name:e.target.value})

  render:->
    <React.Fragment>
      <div style={{margin:10,padding:"10px 15px",background:"#eee",boder:"1px solid #ddd",display:"inline-block",borderRadius:4}} >
        <h1>Hello {@state.name || 'World'}</h1>
        <input style={{fontSize:14,padding:"5px 8px"}} placeholder="your name" value={@state.name} onInput={(e)=> @handleChange(e)} />
        <button style={{padding:"5px 8px",fontSize:14,borderRadius:4,margin:10}}  onClick={@handleClick}> Click Me!</button>
      </div>
      <br />
      <Counter />
    </React.Fragment>