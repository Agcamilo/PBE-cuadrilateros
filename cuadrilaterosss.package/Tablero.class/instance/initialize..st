initialization
initialize: cantCeldas
	|celda origen n resguardo aux|
	
	super initialize.
	n:= cantCeldas.
	self extent: (25*n)@(25*n).
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
				(estadojuego ~=1) ifTrue:[
				((valordado1 = 1) & (valordado2 = 1)) ifTrue:[
					
					(estadoturno = 1) ifTrue: [ 
						 ultimojugador := 1.
						(celdas at: i at: j) color: (p1 getColorOff).
						 p1 incrementarPuntos . 
						puntaje1  contents: (p1 getPuntaje ) asString.
						(celdas at: i at:j) offColor:(p1 getColorOff).
						 ]
					ifFalse: [
						ultimojugador := 2.
						(celdas at: i at: j) color: (p2 getColorOff).
						 p2 incrementarPuntos . 
						puntaje2  contents: (p2 getPuntaje ) asString.
						(celdas at: i at:j) offColor:(p2 getColorOff).
						  ].
					
					estadojuego :=1.
				 	self cambiarestados 
					]
				ifFalse: [  
				(estadojuego = 2) ifTrue: [ resguardo := (celdas at:i at:j). estadojuego := 3.
				(estadoturno = 1) ifTrue: [  	
					(celdas at: i at: j) color: (p1 getColor). ]
				ifFalse: [ (celdas at: i at: j) color: (p2 getColor) ] ]
				ifFalse: [
				aux:= self verificarCuadrilatero: resguardo hasta: (celdas at:i at:j).
				
				
				(aux = 1) ifTrue:[
				estadojuego :=1.
				 self cambiarestados.]
				ifFalse:[ estadojuego := 2]
					
				].
			].
		
		
		].
	
	
	].
	 ]].
