game logic
cambiarestados
(estadoturno = 1) ifTrue: [ estadoturno := 2 ]
	                                    ifFalse: [ estadoturno := 1 ].
	estadojuego := 1