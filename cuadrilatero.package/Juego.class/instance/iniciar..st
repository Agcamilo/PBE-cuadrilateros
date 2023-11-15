funciones de inicio
iniciar: a
|i j  n |
n := a.
i := SystemWindow new.
tablero := Array2D new: n.

1 to: n do: [ :k |
	1 to: n do: [ :m | 
		j := Celda new.
		j setX:k.
		j setY: m.
		j actionSelector: #hola.
		j onColor: Color blue.
		j bounds: ((53*m)@(53*k) extent:(50@50)).

        i addMorph: j
		 ]
	
	
	 ].
i openInWorld .

self jugar