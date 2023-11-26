accessing
setPuntaje: n poner: cantidad
	(n=1)
	 ifTrue: [ puntaje1 contents: cantidad asString ]
	ifFalse: [ puntaje2 contents: cantidad asString ]