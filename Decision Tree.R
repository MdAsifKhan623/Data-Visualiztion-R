#importing the packages
library(rpart)
library(rpart.plot)

#importing the dataset
data=read.csv("C:\\MS\\Spring 2021\\Data Visualization CAP 5738\\dataset.csv")

dim(data)

data

#Taking a sample size of 300 from the dataframe
data=data[1:300,]

data

#Dimension of the dataframe
dim(data)

smple<- sample(300,100)

#dividing into training  and test set
training_data<- data[smple,]
test_data<- data[-smple,]

#preparing the decision tree model
decisionTreeModel<- rpart(Index~., training_data, method = "class")

#Plotting the decision tree
rpart.plot(decisionTreeModel)


#Predicting the values of the index
predictedValue= predict(decisionTreeModel,newdata=test_data[,1:3],type="class")

predictedValue

