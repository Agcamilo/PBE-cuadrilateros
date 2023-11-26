testing
isFull: n
"devuelve si el tablero esta totalmente ocupado"
	1 to: n do:[:i|
		1 to:n do:[:j|
			(celdas at:i at:j) getState ifFalse:[^false]
			]
		].
	^true.