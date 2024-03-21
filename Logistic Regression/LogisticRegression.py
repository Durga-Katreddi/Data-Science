#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np  # For numerical operations
import pandas as pd  # For data manipulation

from sklearn.model_selection import train_test_split  # For splitting data into train and test sets
from sklearn.linear_model import LogisticRegression  # For logistic regression modeling
from sklearn.preprocessing import StandardScaler  # For feature scaling
import matplotlib.pyplot as plt  # For visualization

#  plot the ROC curve and calculate AUC
from sklearn.metrics import accuracy_score,roc_curve, roc_auc_score


# In[2]:


#Read the dataframe
df = pd.read_csv('winequality-red.csv')


# In[3]:


#Display top 5 tows
df.head()


# In[4]:


#Information about the data
df.info()


# In[5]:


#Statistics about the data
df.describe()


# In[6]:


#select our Features along with target variable
features = ['fixed acidity', 'volatile acidity', 'citric acid', 'residual sugar', 'chlorides',
            'free sulfur dioxide', 'total sulfur dioxide', 'density', 'pH', 'sulphates', 'alcohol']
X = df[features]
#target variable
y = df['quality']


# In[7]:


#standardise the features
X_scaled = StandardScaler().fit_transform(df[df.columns])


# In[8]:


#split the dataset into training and testing dataset
X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.2, random_state=42)


# In[9]:


#now train a logistic regression model
model = LogisticRegression(multi_class = 'multinomial',solver = 'lbfgs')


# In[10]:


model.fit(X_train, y_train)


# In[11]:


#predict on test dataset
y_pred= model.predict(X_test)


# In[12]:


# Logistic (sigmoid) function
def sigmoid(x):
    return 1 / (1 + np.exp(-x))

# Generate data for the S-curve
x = np.linspace(-10, 10, 100)
y = sigmoid(x)

# Plot the S-curve
plt.figure(figsize=(8, 6))
plt.plot(x, y, label='Sigmoid (Logistic) Function', color='blue')
plt.xlabel('x')
plt.ylabel('sigmoid(x)')
plt.title('Logistic Regression S-curve')
plt.axhline(y=0.5, color='r', linestyle='--', label='Decision Boundary (y=0.5)')
plt.legend()
plt.grid(True)
plt.show()


# In[13]:


#calculate accuracy
accuracy = accuracy_score(y_test, y_pred)
print(accuracy)

