*Object-Centric-Debugger
collectOCDResultIn: context on: aBuilder
	aBuilder
		item: 'Break on call';
		target: self;
		selector: #collectOCDResultInContext:;
		arguments: (Array with: context)