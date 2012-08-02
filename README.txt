LuaNeuralNetwork Library
by Adam Dorwart

This is a simple feedforeward nueral network that uses a sigmoid transfer function and a backprogation learning algorithm to model logistic regression. It was written for pure Lua.

Included functions:

NerualNetwork.create( numInputs, numOutputs, numHiddenLayers, neuronsPerLayer, learningRate)
   numInputs - the number of input neurons
   numOutputs - the number of output neurons
   numHiddenLayers - the number of hidden layers
   neuronsPerLayer - the number of neurons in the hidden layers (not input/output layers)
   learningRate - the rate at which the neural network learns (Clamped percentage eg: 0-1, smaller the value the longer it takes to teach but solution is more accurate, higher the value the less time it takes to approach the solution but may not be accurate)
   Return value - a neural network object.

NerualNetwork:forewardPropagate(...)
   number of arguments == number of inputs for the NN object
   inputs whatever impulse and returns the learned results
   Return value - a table containing the results

NeuralNetwork:backwardPropagate( inputs, desiredOutputs)
   inputs - a table that has the inputs
   desiredOutputs - a table that has the desired outputs for this training set

NeuralNetwork:train( trainingSet, attempts)
	trainingSet - A formatted table that includes training data to teach a NN object
	attempts - Number of attempts to try and teach the NN the training set

NeuralNetwork:test( trainingSet, extraInputs)
	trainingSet - A formatted table that includes training data to test the accuracy of the NN object
   
NeuralNetwork:save()
   return value - returns a unique string that can be used to load the NN again in its current state (remembers training). This string could then be written to a file.
File header specs:
	|INFO| - should be FF BP NN
	|I| - number of inputs
	|O| - number of outputs
	|HL| - number of hidden layers
	|NHL| - number of neurons per hidden layer
	|LR| - learning rate
	|BW| - bias and weight values

NeuralNetwork.load( data)
    data - the unique string returned by NeuralNetwork:save()
    return value - a Neural Network object