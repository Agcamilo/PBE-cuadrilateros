initialization
initialize: cantCeldas
	|celda origen n resguardo|
	super initialize.
	n:= cantCeldas.
	"self bounds: (1@1 extent:(n*ancho@n*alto)+(2+self borderWidth ))".
	self extent: (25*n+10)@(25*n).
	self color: (Color r:0.827 g:0.827 b:0.827). "La escala del RGB color es de 0 a 1"
	self borderColor: Color transparent.
	celdas:= Array2D new:n.
	
	1 to: n do:[:i|
		1 to: n do:[:j|
			celda:= Celda new.
			origen:= self innerBounds origin.
			celdas at:i at:j put:celda.
			(celdas at:i at:j) setX: i.
			(celdas at:i at:j) setY: j.
			
			self addMorph: (celdas at:i at:j).
			
			(celdas at:i at:j) position: ((i-1)*(25))@((j-1)*(25))+origen.
			
			(celdas at:i at:j) mouseAction: [
				
				((valordado1 = 1) & (valordado2 = 1)) ifTrue:[
					
					(estadoturno = 1) ifTrue: [ 
						 ultimojugador := 1.
						(celdas at: i at: j) color: (p1 getColor).
						 j1 := j1 + 1. puntaje1  contents: j1 asString.
						(celdas at: i at:j) offColor:(p1 getColor).
						p1 setPuntaje: (j1).
						 ]
					ifFalse: [
						ultimojugador := 2.
						(celdas at: i at: j) color: (p2 getColor).
						 j2 := j2 + 1 . puntaje2  contents: j2 asString.
						(celdas at: i at:j) offColor:(p2 getColor).
						p2 setPuntaje: (j2).
						  ].
					
					estadojuego :=1.
				 (estadoturno = 1) ifTrue: [ estadoturno := 2]
				                  ifFalse: [ estadoturno := 1 ].
					
					]
				ifFalse: [  
				(estadojuego = 2) ifTrue: [ resguardo := (celdas at:i at:j). estadojuego := 3.
				(estadoturno = 1) ifTrue: [  	
					(celdas at: i at: j) color: Color pink. ]
				ifFalse: [ (celdas at: i at: j) color: Color blue ] ]
				ifFalse: [
				self verificarCuadrilatero: resguardo hasta: (celdas at:i at:j).
				
				estadojuego :=1.
				
				 (estadoturno = 1) ifTrue: [ estadoturno := 2]
				                  ifFalse: [ estadoturno := 1 ].
					
				].
			].
		
		
		].
	
	
	].
	 ]