funciones de inicio
iniciar
|a aux h|
interfaz := SystemWindow new.
a := UIManager default
chooseFrom: #('5x5' '10x10' '15x15' '20x20') lines: #(2 4) message: 'Elija dimensiones del tablero'.
aux := #(5 10 15 20).
a := aux at: a.
tamInter :=a.
estadojuego := 1.
self crearBotones: a.

(a=5)ifTrue:[a:=7.5. tamInter:=a]. "se puede cambiar (ya mas para el diseño"
interfaz extent: (55*a)@(35*a). "tamaño de la ventana proporcional al tamaño del tablero"
"interfaz relabel."
interfaz openInWorld.





