as yet unclassified
cambio: n
COMODIN:= false.
(n) caseOf:{
		1 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/1.png'). VALOR:= 1].
		2 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/2.png'). VALOR:= 2].
		3 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/3.png'). VALOR:= 3].
		4 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/4.png'). VALOR:= 4].
		5 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/5.png'). VALOR:= 5].
		6 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/6.png'). VALOR:= 6].
		7 ->[IMAGEN:= (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/7.png'). COMODIN:= true].
}.
self form: IMAGEN.