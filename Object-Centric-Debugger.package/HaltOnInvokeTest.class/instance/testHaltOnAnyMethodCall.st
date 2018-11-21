tests
testHaltOnAnyMethodCall
	object1 breakOnCall.
	object1 m3.
	self should: [ object1 m3 ] raise: Break.
"	self should: [ object1 m2 ] raise: Break."
	self shouldnt: [ object2 m1 ] raise: Break