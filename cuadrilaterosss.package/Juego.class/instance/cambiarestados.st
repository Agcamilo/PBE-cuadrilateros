game logic
cambiarestados
(estadoturno = 1) ifTrue: [ estadoturno := 2 . turno contents: ('Es el turno de:   ', p2 getNombre asString).]
	               ifFalse: [ estadoturno := 1 . turno contents: ('Es el turno de:   ', p1 getNombre asString).].
	
	estadojuego := 1