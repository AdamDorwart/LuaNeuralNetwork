TrainingSet = {
	{
		input = {0,0}, 
		output = {0}
	},
 	{
		input = {1,0}, 
		output = {1}
	},
	{
		input = {0,1}, 
		output = {1}
	},
	{
		input = {1,1}, 
		output = {1}
	},
}
TrainingSet.inputs = table.getn(TrainingSet[1].input)
TrainingSet.outputs = table.getn(TrainingSet[1].output)