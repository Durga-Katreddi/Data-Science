#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score
from sklearn.preprocessing import StandardScaler


# In[2]:


# Load the training and testing data
training_data = pd.read_csv('ALS_TrainingData_2223.csv')
testing_data = pd.read_csv('ALS_TestingData_78.csv')


# In[3]:


training_data.head()


# In[4]:


testing_data.head()


# In[5]:


print(training_data.describe())
print(testing_data.describe())


# In[6]:


# Remove duplicates
testing_data.drop_duplicates(inplace=True)
training_data.drop_duplicates(inplace=True)


# In[12]:


print("After removing duplicates")
print(testing_data.shape)
print(training_data.shape)


# In[13]:


testing_data.isnull().sum()


# In[11]:


training_data.isnull().sum()


# In[8]:


# Select relevant features for clustering
selected_features = ['Age_mean', 'ALSFRS_slope', 'Creatinine_max', 'Glucose_max']


# In[9]:


# Extract the selected features for training and testing data
X_train = training_data[selected_features]
X_test = testing_data[selected_features]


# In[14]:


# Standardize the features for training and testing data
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)


# In[21]:


import matplotlib.pyplot as plt

# Summary of the dataset
print("Summary of Training Data:")
print(X_train.describe())

# Preliminary Visualization (assuming 2D visualization)
plt.scatter(X_train_scaled[:, 0], X_train_scaled[:, 1])
plt.xlabel('Age_mean (Standardized)')
plt.ylabel('ALSFRS_slope (Standardized)')
plt.title('Preliminary Visualization of Data')
plt.show()


# In[20]:


# Train a k-Means Model for training data
k_values = [2, 3]

for k in k_values:
    kmeans = KMeans(n_clusters=k, random_state=42)
    kmeans.fit(X_train_scaled)
    labels_test = kmeans.predict(X_test_scaled)  # Predict labels for testing data

    # Visualize the Clustering Result for testing data for each k
    plt.scatter(X_test_scaled[:, 0], X_test_scaled[:, 1], c=labels_test, cmap='viridis', alpha=0.5)
    plt.scatter(kmeans.cluster_centers_[:, 0], kmeans.cluster_centers_[:, 1], c='red', marker='x', s=300, label='Cluster Centers (Testing Data)')
    plt.xlabel('Age_mean (Standardized)')
    plt.ylabel('ALSFRS_slope (Standardized)')
    plt.title(f'k-Means Clustering for Testing Data (k={k})')
    plt.legend()
    plt.show()
    print(f'Cluster Centers for testing data (k={k}):')
    cluster_centers_test = kmeans.cluster_centers_
    print(cluster_centers_test)


# In[ ]:





# In[19]:


# Visualize the Clustering Result for training data
labels_train = kmeans.predict(X_train_scaled)
cluster_centers_train = kmeans.cluster_centers_
plt.scatter(X_train_scaled[:, 0], X_train_scaled[:, 1], c=labels_train, cmap='viridis', alpha=0.5)
plt.scatter(cluster_centers_train[:, 0], cluster_centers_train[:, 1], c='red', marker='x', s=300, label='Cluster Centers (Training Data)')
plt.xlabel('Age_mean (Standardized)')
plt.ylabel('ALSFRS_slope (Standardized)')
plt.title(f'k-Means Clustering for Training Data (k={k})')
plt.legend()
plt.show()


# In[ ]:




