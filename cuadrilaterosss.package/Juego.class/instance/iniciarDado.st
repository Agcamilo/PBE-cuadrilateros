botones
iniciarDado
|imagen|
tirar:= SimpleButtonMorph new.
D1:= DADO new. D1 initialize. D1 position: ((tamInter*25)+130)@(160+extra). "Crea dado 1 y lo inicializa"
D2:= DADO new. D2 initialize. D2 position: ((tamInter*25)+185)@(160+extra)."Crea dado 2 y lo inicializa"
interfaz addMorph: tirar.
imagen:= ImageMorph new.
imagen form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/BOTONDADO.png').
imagen position: ((tamInter*25)+85)@(205+extra).
interfaz addMorph: imagen.
interfaz addMorph: D1. "Agrega el primer dado"
interfaz addMorph: D2. "Agrega el segundo dado"
tirar position: ((tamInter*25)+100)@(230+extra).
tirar color: (Color r:0.858 g:0.862 b:0.839). "RGB: 219, 220, 214"
tirar  target:[ 
	(estadojuego = 1) ifTrue: [  
		D1 random."Le asigna valores aleatorios a los dados y cambia la imagen"
		D2 random.
		D1 comodin."Controla si salió un comodín y toma las acciones correspondientes"
		D2 comodin.
		valordado1:= D1 getValorJ. 
		valordado2:= D2 getValorJ. 
		estadojuego := 2]].
tirar label:'Tirar Dados'.
tirar extent: 120@25.
tirar borderWidth: 0.
tirar actionSelector: #value.