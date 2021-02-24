library(rpart)
library(rpart.plot)



#importing the dataset
data=read.csv("C:\\MS\\Spring 2021\\Data Visualization CAP 5738\\dataset.csv")

data

dim(data)

smple<- sample(200,80)

training_data<- data[smple,]
test_data<- data[-smple,]

decisionTreeModel<- rpart(Index~., training_data, method = "class")

rpart.plot(decisionTreeModel)

predictedValue= predict(decisionTreeModel,test_data[,4])

