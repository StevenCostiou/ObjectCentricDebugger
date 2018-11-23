*Object-Centric-Debugger
objectCentricDebuggerMenuOn: aBuilder
	<RubSmalltalkCodeMenu>
	<contextMenu>
	aBuilder
		item: 'OCD';
		selector: #value;
		target: [  ];
		keyText: 't ';
		order: 0;
		iconName: #breakpoint;
		with: [ self buildOCDMenuOn: aBuilder ]