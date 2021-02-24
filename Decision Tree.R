library(rpart)
library(rpart.plot)

#importing the dataset
data=read.csv("C:\\MS\\Spring 2021\\Data Visualization CAP 5738\\dataset.csv")

data=data[1:300,]

data

dim(data)

smple<- sample(300,120)

training_data<- data[smple,]
test_data<- data[-smple,]

decisionTreeModel<- rpart(Index~., training_data, method = "class")



rpart.plot(decisionTreeModel)

predictedValue= predict(decisionTreeModel,newdata=test_data[,1:3],type="class")

predictedValue

