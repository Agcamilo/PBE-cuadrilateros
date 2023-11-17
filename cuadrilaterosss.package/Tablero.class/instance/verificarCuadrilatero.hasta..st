as yet unclassified
verificarCuadrilatero: aCelda hasta: aCelda2
|bandera|
bandera:=1.
(estadojuego = 3) ifTrue: [  
	(aCelda getX) to: (aCelda2 getX) do:[:i|
		(aCelda getY) to: (aCelda2 getY) do:[:j|
				((celdas at: i at:j) isOn) ifTrue: [ bandera:=0 ].
			]
		].
	(bandera=1)ifTrue:[
		(aCelda getX) to: (aCelda2 getX) do:[:i|
				(aCelda getY) to: (aCelda2 getY) do:[:j|
						"(celdas at: i at:j) toggleState "
						(estadoturno = 1 ) ifTrue: [  
						(celdas at: i at: j) color: Color red. j1 := j1 + 1]
					   ifFalse: [ (celdas at: i at: j) color: Color orange. j2 := j2 + 1 ].
					
	
						(celdas at: i at:j) mouseAction: [ nil ].
					]
			]]]
	