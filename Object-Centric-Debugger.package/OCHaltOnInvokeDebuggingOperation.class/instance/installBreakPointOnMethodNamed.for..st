installation
installBreakPointOnMethodNamed: methodName for: anObject
	ObjectCentricBreakpoint new
		installOn: anObject
		for: methodName
		condition: self condition
		arguments: self arguments