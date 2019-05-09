initialization
setHaltOnCallForObject: anObject
	|handler|
	handler := OCMessageHandler onDebugger: self.
	proxy := AvForwardingProxy becomeTarget: anObject handler: handler.
	