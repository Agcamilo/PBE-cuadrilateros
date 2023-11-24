botones
crearPasasTurno
pasarturno :=SimpleButtonMorph new.
cora1:= Corazones new. cora1 initialize. cora1  position: (tamInter*40)@230.
cora2:= Corazones new. cora2 initialize. cora2  position: (tamInter*40)@250.
interfaz addMorph: pasarturno.
interfaz addMorph: cora1.
interfaz addMorph: cora2.
pasarturno  position: (tamInter*20)@((tamInter*28)+50).
pasarturno  color: (Color r:0.858 g:0.862 b:0.839). 
pasarturno  target:[
	(estadojuego ~= 0) ifTrue:[
		(estadoturno =1) ifTrue:[p1 reducirVida. cora1 cambio: (p1 getVida)] 
						  	ifFalse:[ p2 reducirVida. cora2 cambio: (p2 getVida)].
		self cambiarestados.
					(p1 getVida = 0) ifTrue:[self finDelJuego: p2. cora2 cambio: (p2 getVida)].
					(p2 getVida = 0) ifTrue:[self finDelJuego: p1. cora1 cambio: (p1 getVida)].
					].
	 ].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.