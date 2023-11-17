as yet unclassified
verificarCuadrilatero: aCelda hasta: aCelda2
|bandera|
bandera:=1.

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
						(celdas at: i at: j) color: Color red.]
					   ifFalse: [ (celdas at: i at: j) color: Color orange.  ].
						(celdas at: i at:j) mouseAction: [ nil ].
					]
			]]
	