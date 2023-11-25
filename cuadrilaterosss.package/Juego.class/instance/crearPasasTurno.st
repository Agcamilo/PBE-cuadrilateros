botones
crearPasasTurno
"Acá se generan el botón de pasar turno, los corazones de las vidas, el marco de las vidas y el morph de color de ese marco"
|ui1 ui2 relleno1 relleno2 imagen|
bPasarturno :=SimpleButtonMorph new.
ui1:= ImageMorph new.
ui2:= ImageMorph new.
ui1 form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/JUGADOR1.png').
ui1 position: ((tamInter*25)+80)@(0+extra).
relleno1:= EllipseMorph new.
relleno1 extent: 65@60.
relleno1 position: ((tamInter*25)+90)@(10+extra).
relleno1 color: p1 getColor.
relleno2:= EllipseMorph new.
relleno2 extent: 65@60.
relleno2 position: ((tamInter*25)+90)@(80+extra).
relleno2 color: p2 getColor.
ui2 form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/JUGADOR2.png').
ui2 position: ((tamInter*25)+80)@(70+extra).
bCora1:= Corazones new. bCora1 initialize. bCora1  position: ((tamInter*25)+155)@(2+extra).
bCora2:= Corazones new. bCora2 initialize. bCora2  position: ((tamInter*25)+155)@(72+extra).
interfaz addMorph: bPasarturno.
imagen:= ImageMorph new.
imagen form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/BOTONPASARTURNO.png').
imagen position: ((tamInter*25)+85)@(250+extra).
interfaz addMorph: imagen.
interfaz addMorph: relleno1.
interfaz addMorph: relleno2.
interfaz addMorph: ui1.
interfaz addMorph: ui2.
interfaz addMorph: bCora1.
interfaz addMorph: bCora2.
bPasarturno  position: ((tamInter*25)+100)@(275+extra).
bPasarturno  color: (Color r:0.858 g:0.862 b:0.839). 
bPasarturno  target:[
	(estadojuego ~= 0) ifTrue:[
		(estadoturno =1) ifTrue:[p1 reducirVida. bCora1 cambio: (p1 getVida)] 
						  	ifFalse:[ p2 reducirVida. bCora2 cambio: (p2 getVida)].
		self cambiarestados.
					(p1 getVida = 0) ifTrue:[self finDelJuego: p2. bCora2 cambio: (p2 getVida)].
					(p2 getVida = 0) ifTrue:[self finDelJuego: p1. bCora1 cambio: (p1 getVida)].
					].
	 ].
bPasarturno label:'Pasar Turno'.
bPasarturno extent: 120@25.
bPasarturno borderWidth: 0.
bPasarturno actionSelector: #value.