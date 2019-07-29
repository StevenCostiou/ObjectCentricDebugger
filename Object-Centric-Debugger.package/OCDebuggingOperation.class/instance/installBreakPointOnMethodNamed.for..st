installation
installBreakPointOnMethodNamed: methodName for: anObject
	| bp |
	bp := ObjectCentricBreakpoint new.
	bp installOn: anObject for: methodName.
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: bp link
		forObject: anObject