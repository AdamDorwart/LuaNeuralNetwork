--Neural Netowrk to solve XOR problem
--created by Adam Dorwart

math.randomseed(os.time())
dofile("NNlib.lua")
dofile("TrainingSet.lua")

print("Enter the amount of hidden layers in Neural Network (recommended|1) : ")
hiddenLayers = tonumber(io.stdin:read())

print("Enter the amount of Neurons per hidden layer(recommended|4) : ")
neuronsPerLayer = tonumber(io.stdin:read())

print("Enter the learing rate (0-100) (recommened|50) : ")
learningRate = tonumber(io.stdin:read()/100)

network = NeuralNetwork.create(TrainingSet.inputs,TrainingSet.outputs,hiddenLayers,neuronsPerLayer,learningRate)

print("Enter the number of attempts at Teaching the Neural Network (Try 4000): ")
attempts = tonumber(io.stdin:read())

print("Teaching...")

network:train( TrainingSet, attempts)
print(network:test( TrainingSet))

print("Saving Neural Network...")
NN = io.open("neuralNet.txt","w")
NN:write(network:save())
NN:flush()
NN:close()