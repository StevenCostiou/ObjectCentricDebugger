*Object-Centric-Debugger
collectForOCDBreakpoint: anArrayOfReifications
	| collector object |
	collector := anArrayOfReifications first.
	object := anArrayOfReifications second.
	(collector knowsObject: object) ifTrue:[^self].
	collector collectObject: object.