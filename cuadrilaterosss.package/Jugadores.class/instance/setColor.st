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
	self colorButtons:Color red extent: (30@50) en: c1 y: ven.
	self colorButtons: Color green extent:(30@90) en:c2 y:ven.
	self colorButtons: Color yellow extent:(30@130) en:c3 y:ven.
	self colorButtons: Color blue extent:(70@50) en:c4 y:ven.
	self colorButtons: Color pink extent:(70@90) en:c5 y:ven.
	self colorButtons: Color black extent:(30@130) en:c6 y:ven.
	ven addMorph: c1.
	ven addMorph: c2.
	ven addMorph: c3.
	ven addMorph: c4.
	ven addMorph: c5.
	ven addMorph: c6.
	ven setLabel: ''.
	ven openInWorld.
	
	
	