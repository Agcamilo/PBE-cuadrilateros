accessing
setColor
	"El usuario eligira su color a representar"
	"scope: variable de instancia a usar: color"
	|ven c1 c2 c3 c4 c5 c6|
	
	ven:= SystemWindow new.
	c1:= SimpleButtonMorph new.
	c2:= SimpleButtonMorph new.
	c3:= SimpleButtonMorph new.
	c4:= SimpleButtonMorph new.
	c5:= SimpleButtonMorph new.
	c6:= SimpleButtonMorph new.
	
	ven extent: 150@300.
	
	c1 extent: 30@30.
	c1 borderWidth: 1.
	c1 position: 30@50.
	c1 color: Color red.
	c1 actionSelector: #value.
	c1 target:[
		 color:= Color red.
		ven delete.
		].
	
	c2 extent: 30@30.
	c2 borderWidth: 1.
	c2 position: 30@90.
	c2 color: Color green. "colores se cambian"
	c2 actionSelector: #value.
	c1 target:[
		color:= Color green.
		ven delete.
		].
	
	c3 extent: 30@30.
	c3 borderWidth: 1.
	c3 position: 30@130.
	c3 color: Color yellow.
	c3 actionSelector: #value.
	c3 target:[
		color:= Color yellow.
		ven delete.
		].
	
	c4 extent: 3@30.
	c4 borderWidth: 1.
	c4 position: 70@50.
	c4 color: Color blue.
	c4 actionSelector: #value.
	c4 target:[
		color:= Color blue.
		ven delete.
		].
	
	c5 extent: 30@30.
	c5 borderWidth: 1.
	c5 position: 70@90.
	c5 color: Color pink.
	c5 actionSelector: #value.
	c5 target:[
		color:= Color pink.
		ven delete.
		].
	
	c6 extent: 30@30.
	c6 borderWidth: 1.
	c6 position: 30@130.
	c6 color: Color black.
	c6 actionSelector: #value.
	c6 target:[
		color:= Color black.
		ven delete.
		].
	
	ven addMorph: c1.
	ven addMorph: c2.
	ven addMorph: c3.
	ven addMorph: c4.
	ven addMorph: c5.
	ven addMorph: c6.
	
	ven setLabel: ''.
	ven openInWorld.
	
	
	