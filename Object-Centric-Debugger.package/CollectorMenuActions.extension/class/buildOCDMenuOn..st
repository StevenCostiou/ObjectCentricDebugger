*Object-Centric-Debugger
buildOCDMenuOn: aBuilder
	| context |
	context := SugsAbstractContext contextFor: aBuilder model.
	self collectOCDResultIn: context on: aBuilder