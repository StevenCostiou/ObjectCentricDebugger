Halt - any method
testMethodInvokationDoesNotHalt
	object1 breakOnCall.

	self should:  [object1 m3]  raise: Break.