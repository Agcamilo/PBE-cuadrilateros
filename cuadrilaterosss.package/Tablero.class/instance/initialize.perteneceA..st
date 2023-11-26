initialization
initialize: cantCeldas perteneceA: unJuego
	|celda origen n resguardo aux|
	super initialize.
	juego:= unJuego.
	p1:= unJuego getPersona: 1.
	p2:= unJuego getPersona: 2.
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
				(juego getEstadoJuego ~=1) ifTrue:[
				(((juego getValorDado: 1 ) = 1) & ((juego getValorDado: 2) = 1)) ifTrue:[
					
					(juego getEstadoTurno = 1) ifTrue: [ 
						 juego setUltimoJugador: 1.
						(celdas at: i at: j) color: (p1 getColorOff).
						 p1 incrementarPuntos . 
						juego setPuntaje: 1 poner: (p1 getPuntaje).
						(celdas at: i at:j) offColor:(p1 getColorOff).
						 ]
					ifFalse: [
						juego setUltimoJugador: 2.
						(celdas at: i at: j) color: (p2 getColorOff).
						 p2 incrementarPuntos . 
						juego setPuntaje: 2 poner: (p2 getPuntaje).
						(celdas at: i at:j) offColor:(p2 getColorOff).
						  ].
					
					juego setEstadoJuego: 1.
				 	juego cambiarestados 
					]
				ifFalse: [  
				(juego getEstadoJuego = 2) ifTrue: [ resguardo := (celdas at:i at:j). juego setEstadoJuego: 3.
				(juego getEstadoTurno = 1) ifTrue: [  	
					(celdas at: i at: j) color: (p1 getColor). ]
				ifFalse: [ (celdas at: i at: j) color: (p2 getColor) ] ]
				ifFalse: [
				aux:= self verificarCuadrilatero: resguardo hasta: (celdas at:i at:j).
				
				(self isFull: n) ifTrue:[ "si el tablero esta lleno se verifica que jugador tiene mas puntos y se llama al fin del juego"
					(p1 getPuntaje >= p2 getPuntaje) ifTrue:[juego finDelJuego: p1]
																ifFalse:[juego finDelJuego: p2]
					].
				(aux = 1) ifTrue:[
				juego setEstadoJuego: 1.
				 juego cambiarestados.]
				ifFalse:[ juego setEstadoJuego: 2]
					
				].
			].
		
		
		].
	
	
	].
	 ]].
