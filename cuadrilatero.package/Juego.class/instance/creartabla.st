as yet unclassified
creartabla
|i j array n |
n:=10.
i := SystemWindow new.
array := Array2D new: n.

1 to: n do: [ :k |
	1 to: n do: [ :m | 
		j := SimpleSwitchMorph  new.
		j actionSelector: #hola.
		j onColor: Color blue.
		j bounds: ((53*m)@(53*k) extent:(50@50)).

        i addMorph: j
		 ]
	
	
	 ].
i openInWorld .
