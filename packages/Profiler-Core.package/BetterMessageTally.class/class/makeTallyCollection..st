spying
makeTallyCollection: profiler
	| wrapperCol |
		
	wrapperCol := TallyCollection new profiler: profiler.
	
	self markBottlenecks.
	
	TallyObjectCollection do: [:t | (t tallyParent) ifNil: [wrapperCol add: (TallyObjectItemWrapper with: t)]].
	
	^ wrapperCol