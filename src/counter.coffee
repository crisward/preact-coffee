import React, { useState,useCallback } from 'react';
import {useWindowWidth} from './myhooks'

export default =>
  [value, setValue] = useState(0)
  [alert, setAlert] = useState("")

  width = useWindowWidth()
  add = useCallback => setValue((value + 1),[value])
  remove = useCallback => 
    if value > 0 
      setAlert("")
      setValue((value - 1),[value])
    else 
      setAlert("That's too low!")

  <div style={{margin:10,padding:"10px 15px",background:"#eee",boder:"1px solid #ddd",display:"inline-block",borderRadius:4}} >
    <button style={{padding:"5px 8px",fontSize:14,borderRadius:4,margin:10}} onClick={remove}>Remove</button>
      Counter: {value}
    <button style={{padding:"5px 8px",fontSize:14,borderRadius:4,margin:10}} onClick={add}>Add</button>

    {if alert && value == 0
      <p>{alert}</p>
    }

    <p>Window width is {width}px</p>
  </div>
