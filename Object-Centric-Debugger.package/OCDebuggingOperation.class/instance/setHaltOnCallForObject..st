initialization
setHaltOnCallForObject: anObject
	|handler|
	handler := OCMessageHandler onDebugger: self.
	AvForwardingProxy becomeTarget: anObject handler: handler.
	