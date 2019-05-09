halting
haltOnce
	^ haltOnce ifNil: [ haltOnce := false ]