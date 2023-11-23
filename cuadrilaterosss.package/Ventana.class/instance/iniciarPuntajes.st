botones
iniciarPuntajes
puntaje1 := StringMorph new.
puntaje1 color: p1 getColor.
puntaje1 contents: p1 getNombre.
puntaje1 position: ((tamInter*40)+5)@150.
puntaje1 backgroundColor: Color white. 
interfaz addMorph: puntaje1.

puntaje2 := StringMorph new.
puntaje2 color: p2 getColor.
puntaje2 contents: p2 getNombre.
puntaje2 position:((tamInter*40)+90)@150.
interfaz addMorph: puntaje2.