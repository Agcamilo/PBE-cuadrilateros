funciones de inicio
iniciar
interfaz := SystemWindow new.
tamInter :=a.
estadojuego := 1.
estadoturno := 1.
ultimojugador :=2.
self crearBotones: tamInter.
(a=5)ifTrue:[a:=7.5. tamInter:=a]. "se puede cambiar (ya mas para el diseño"
interfaz extent: (55*a)@(35*a). "tamaño de la ventana proporcional al tamaño del tablero"
"interfaz relabel."
interfaz openInWorld.






