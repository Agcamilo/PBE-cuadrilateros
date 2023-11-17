testing
isFull: n
	1 to: n do:[:i|
		1 to:n do:[:j|
			(celdas at:i at:j) getState ifFalse:[^false]
			]
		].
	^true.