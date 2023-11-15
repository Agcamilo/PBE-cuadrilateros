funciones de inicio
iniciar: a
interfaz := SystemWindow new.
j:= SimpleButtonMorph new.
sensor:= HandMorph new.
interfaz addMorph: j.
self crearTabla: a.
interfaz openInWorld .
self jugar.