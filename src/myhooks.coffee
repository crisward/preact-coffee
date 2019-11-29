
import React, { useState,useEffect } from 'react';

export useWindowWidth = ->
  [width, setWidth] = useState(window.innerWidth);

  useEffect => 
    handleResize = => setWidth(window.innerWidth)
    window.addEventListener('resize', handleResize)
    => # return unmount
      window.removeEventListener('resize', handleResize);
 
  return width