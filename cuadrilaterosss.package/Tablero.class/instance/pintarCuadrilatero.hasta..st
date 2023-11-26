logica
pintarCuadrilatero: aCelda hasta: aCelda2
|bandera mayorX mayorY menorX menorY|

((aCelda getX) > (aCelda2 getX)) ifTrue: [ mayorX :=aCelda getX . menorX:=aCelda2 getX] "Esto para el control mas facil de la matriz"
									ifFalse:[mayorX :=aCelda2 getX . menorX:=aCelda getX]. 
((aCelda getY) > (aCelda2 getY)) ifTrue: [ mayorY :=aCelda getY . menorY:=aCelda2 getY] 
										ifFalse:[mayorY :=aCelda2 getY . menorY:=aCelda getY]. 
"con mayor y menor XY puedo hacer que revise y dibuje sin importar como el usuario toco los botones"
bandera:=1.
(juego getEstadoJuego = 3) ifTrue: [  
	menorX to: mayorX  do:[:i|
		menorY to: mayorY do:[:j|
				((celdas at: i at:j) getState) ifTrue: [ bandera:=0 ].
				aCelda turnOff. aCelda2 turnOff. 
			]
		].
	 (((mayorX - menorX) + 1) = (juego getValorDado: 1))   ifTrue:[
		(((mayorY - menorY) + 1) = (juego getValorDado: 2 ))   ifFalse: [ bandera := 0 ].
		]
			ifFalse: [
					(((mayorX - menorX) + 1) = (juego getValorDado: 2 )) ifTrue:[
					(((mayorY - menorY) + 1) = (juego getValorDado: 1 ))  ifFalse: [ bandera := 0 ].
			]
			ifFalse:[bandera:=0]
		].
	
	
	
	(bandera=1)ifTrue:[
		menorX to: mayorX do:[:i|
				menorY to: mayorY do:[:j|
						"(celdas at: i at:j) toggleState "
						(juego getEstadoTurno = 1 ) ifTrue: [  juego setUltimoJugador: 1.
						(celdas at: i at: j) color: (p1 getColorOff).
						 p1 incrementarPuntos.
						juego setPuntaje: 1 poner: (p1 getPuntaje).
						(celdas at: i at:j) offColor:(p1 getColorOff).
						 ]
					
						
					   ifFalse: [ juego setUltimoJugador: 2.
						(celdas at: i at: j) color: (p2 getColorOff).
						 p2 incrementarPuntos.
						juego setPuntaje: 2 poner: (p2 getPuntaje).
						(celdas at: i at:j) offColor:(p2 getColorOff).
						
						].
					    
					 
						(celdas at: i at:j) setState: true.
						(celdas at: i at:j) mouseAction: [ nil ].
						
					]
			]]].

^bandera.