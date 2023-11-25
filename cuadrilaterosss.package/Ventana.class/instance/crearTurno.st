botones
crearTurno
|imagen|
turno := StringMorph new.
turno color: Color black.
turno contents: ('Es el turno de:   ', p1 getNombre asString).
turno position: (67)@(27). 
imagen:= ImageMorph new.
imagen form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/TURNO.png').
imagen position: (40)@(10).
interfaz addMorph: turno.
interfaz addMorph: imagen.