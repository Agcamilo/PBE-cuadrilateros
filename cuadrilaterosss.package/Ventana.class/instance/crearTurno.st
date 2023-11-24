as yet unclassified
crearTurno


turno := StringMorph new.
turno color: Color black.
turno contents: ('Es el turno de: ', p1 getNombre asString).
turno position: ((tamInter*40)+5)@430. 
interfaz addMorph: turno.