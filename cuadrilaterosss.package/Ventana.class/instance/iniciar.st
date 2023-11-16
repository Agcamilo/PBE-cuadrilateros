funciones de inicio
iniciar
|a aux h|
interfaz := SystemWindow new.
a := UIManager default
chooseFrom: #('5x5' '10x10' '15x15' '20x20') lines: #(2 4) message: 'Elija dimensiones del tablero'.
aux := #(5 10 15 20).
a := aux at: a.
estadojuego := 1.
self crearBotones: a.

interfaz openInWorld.





