funciones de inicio
iniciar
"crea la ventana donde estaran todos los elementos del juego"
interfaz := SystemWindow new.
interfaz beUnresizeable.
estadojuego := 1.
estadoturno := 1.
ultimojugador :=2.
(tamInter asNumber ) caseOf:{
		10 ->[interfaz extent: (55*tamInter)@(36*tamInter). extra:= 0.].
		15 ->[interfaz extent: (44*tamInter)@(32*tamInter). extra:= 50.].
		20 ->[interfaz extent: (40*tamInter)@(36*tamInter). extra:= 50.].
}.
self crearBotones: tamInter.
extra:= 0.
interfaz openInWorld.