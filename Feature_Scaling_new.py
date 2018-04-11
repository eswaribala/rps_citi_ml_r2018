# -*- coding: utf-8 -*-
"""
Created on Mon Jan 29 22:44:31 2018

@author: Balasubramaniam
"""

#import sys
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
#sys.path.append("G:/Local disk/MachineLearning/Data_Processing/Machine_Learning_AZ_Template_Folder/Machine Learning A-Z Template Folder/Part 1 - Data Preprocessing")
dataset=pd.read_csv("G:/Local disk/MachineLearning/Data_Processing/Machine_Learning_AZ_Template_Folder/Machine Learning A-Z Template Folder/Part 1 - Data Preprocessing/Data.csv")
#importing data set
X=dataset.iloc[:,:-1].values
print(X)
Y=dataset.iloc[:,3].values
print(Y)
#missing data
from sklearn.preprocessing import Imputer
#mean,median and most_frequent
imputer=Imputer(missing_values="NaN",strategy="most_frequent",axis=0)
imputer.fit(X[:,1:3])
X[:,1:3]=imputer.transform(X[:,1:3])

print(X[:,1:3])
#encoding categorical data

from sklearn.preprocessing import LabelEncoder,OneHotEncoder
labelencoder_X=LabelEncoder()
X[:,0]=labelencoder_X.fit_transform(X[:,0])
print(X[:,0])
print(labelencoder_X.classes_)

print(labelencoder_X.transform(['France', 'Germany' ,'Spain']) )
#This encoding is needed for feeding categorical data to many scikit-learn estimators
oneHotEncoder=OneHotEncoder(categorical_features=[0])
#france germany and spain values
X=oneHotEncoder.fit_transform(X).toarray()
print(X)
print("Split Data")
#split data set
from sklearn.cross_validation import train_test_split
X_train,X_test,Y_train,Y_test=train_test_split(X,Y,test_size=0.3,random_state=0)
print(X_train,X_test)

#feature scaling

def featureScaling(arr):
  nmax = max(data)
  nmin = min(data)
  if (nmax == nmin):
      return None
  normalize = nmax - nmin
  return [float(e-nmin)/normalize for e in data ]

# tests of your feature scaler--line below is input data
data = [115, 140, 175]
print (featureScaling(data))

from sklearn.preprocessing import StandardScaler
sc_X=StandardScaler()
X_train=sc_X.fit_transform(X_train)
X_test=sc_X.fit_transform(X_test)

#print(X_test)