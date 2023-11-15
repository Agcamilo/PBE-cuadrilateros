funciones de inicio
iniciar
|a aux|
interfaz := SystemWindow new.
a := UIManager default
chooseFrom: #('5x5' '10x10' '15x15' '20x20') lines: #(2 4) message: 'Elija dimensiones del tablero'.
aux := #(5 10 15 20).
a := aux at: a.
"j:= SimpleButtonMorph new."
"sensor:= HandMorph new."
"interfaz addMorph: j."
"self crearTabla: a."
tablero:= Tablero new initialize:a.
interfaz addMorph: tablero.
tablero position: 50@50.
interfaz openInWorld .
"self jugar."