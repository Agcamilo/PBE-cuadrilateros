funciones de inicio
iniciar
interfaz := SystemWindow new.
interfaz beUnresizeable.
estadojuego := 1.
estadoturno := 1.
ultimojugador :=2.
self crearBotones: tamInter.
interfaz extent: (55*tamInter )@(35*tamInter ). "tamaño de la ventana proporcional al tamaño del tablero"
"interfaz relabel."
interfaz openInWorld.






