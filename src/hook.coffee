import React, { useState,useCallback } from 'react';

export default =>
  [value, setValue] = useState(0);
  increment = useCallback => setValue (value + 1),[value]

  <div style={{margin:10,padding:"10px 15px",background:"#eee",boder:"1px solid #ddd",display:"inline-block",borderRadius:4}} >
    Counter: {value}
    <button style={{padding:"5px 8px",fontSize:14,borderRadius:4,margin:10}} onClick={increment}>Increment</button>
  </div>
