funciones de inicio
iniciar
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
Transcript show: estadojuego asString, ' estado antes de crear botones';cr.
self crearBotones: tamInter.
Transcript show: estadojuego asString, ' estado despues de crear botones';cr.

extra:= 0.
interfaz openInWorld.