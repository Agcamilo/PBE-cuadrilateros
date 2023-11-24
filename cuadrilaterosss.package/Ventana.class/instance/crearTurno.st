botones
crearTurno


turno := StringMorph new.
turno color: Color black.
turno contents: ('Es el turno de: ', p1 getNombre asString).
turno position: (tamInter*15)@((tamInter*30)-20). 
interfaz addMorph: turno.