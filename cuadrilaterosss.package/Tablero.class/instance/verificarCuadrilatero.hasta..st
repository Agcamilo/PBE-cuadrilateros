as yet unclassified
verificarCuadrilatero: aCelda hasta: aCelda2
|bandera mayorX mayorY menorX menorY |
"Transcript show: aCelda getX;cr. "
((aCelda getX) > (aCelda2 getX)) ifTrue: [ mayorX :=aCelda getX . menorX:=aCelda2 getX] "Esto para el control mas facil de la matriz"
									ifFalse:[mayorX :=aCelda2 getX . menorX:=aCelda getX]. 
((aCelda getY) > (aCelda2 getY)) ifTrue: [ mayorY :=aCelda getY . menorY:=aCelda2 getY] 
										ifFalse:[mayorY :=aCelda2 getY . menorY:=aCelda getY]. 
"con mayor y menor XY puedo hacer que revise y dibuje sin importar como el usuario toco los botones"
bandera:=1.
(estadojuego = 3) ifTrue: [  
	menorX to: mayorX  do:[:i|
		menorY to: mayorY do:[:j|
				((celdas at: i at:j) getState) ifTrue: [ bandera:=0 ].
				aCelda turnOff. aCelda2 turnOff.
			]
		].
	 (((mayorX - menorX) + 1) = valordado1)   ifTrue:[
		(((mayorY - menorY) + 1) = valordado2)   ifFalse: [ bandera := 0 ].
		]
	ifFalse: [ (((mayorX - menorX) + 1) = valordado2) ifTrue:[
			(((mayorY - menorY) + 1) = valordado1)  ifFalse: [ bandera := 0 ].
			]
		ifFalse:[bandera:=0]
		].
	
	
	
	(bandera=1)ifTrue:[
		menorX to: mayorX do:[:i|
				menorY to: mayorY do:[:j|
						"(celdas at: i at:j) toggleState "
						(estadoturno = 1 ) ifTrue: [  
						(celdas at: i at: j) color: Color red. j1 := j1 + 1. puntaje1  contents: j1 asString ]
					   ifFalse: [ (celdas at: i at: j) color: Color orange. j2 := j2 + 1 . puntaje2  contents: j2 asString].
					
						(celdas at: i at:j) setState: true.
						(celdas at: i at:j) mouseAction: [ nil ].
					]
			]]]