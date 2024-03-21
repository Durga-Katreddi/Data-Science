#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, accuracy_score, confusion_matrix, roc_curve, auc


# In[2]:


# Step 1: Data Preprocessing and Exploration
data = pd.read_csv("data-breastCancer.csv")
data


# In[3]:


data['diagnosis'] = data['diagnosis'].map({'M': 1, 'B': 0})
X = data.drop(['id', 'diagnosis'], axis=1)
y = data['diagnosis']


# In[4]:


# Step 2: Exploratory Data Analysis (EDA)
print("Exploratory Data Analysis (EDA)")
print(data.head())


# In[5]:


print("Missing Values:")
print(data.isnull().sum())


# In[6]:


print("Summary Statistics:")
print(data.describe())


# In[7]:


# Visualize the distribution of the target variable with labels
plt.figure(figsize=(6, 4))
sns.barplot(x=['Benign', 'Malignant'], y=data['diagnosis'].value_counts())
plt.title("Distribution of Diagnosis (Malignant and Benign)")
plt.show()


# In[8]:


# Plot histograms of numerical features
data.hist(bins=20, figsize=(25, 25))
plt.tight_layout()
plt.show()


# In[9]:


# Correlation heatmap
corr_matrix = data.corr()
plt.figure(figsize=(20,20))
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')
plt.title("Correlation Heatmap")
plt.show()


# In[10]:


# Pairplots
sns.pairplot(data, hue='diagnosis', vars=["radius_mean", "texture_mean", "area_mean", "smoothness_mean"])
plt.show()


# In[11]:


# Step 3: Random Forest Model
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)


# In[12]:


rf_classifier = RandomForestClassifier(n_estimators=100, random_state=42)
rf_classifier.fit(X_train, y_train)
y_pred = rf_classifier.predict(X_test)


# In[13]:


accuracy = accuracy_score(y_test, y_pred)
report = classification_report(y_test, y_pred)


# In[14]:


print("\nRandom Forest Model Evaluation")
print("Accuracy:", accuracy)
print("Classification Report:\n", report)


# In[15]:


# Step 4: N-fold Cross Validation
cv_scores = cross_val_score(rf_classifier, X, y, cv=5)
print("\nCross-Validation Scores:", cv_scores)


# In[16]:


# Step 5: Confusion Matrix
conf_matrix = confusion_matrix(y_test, y_pred)
plt.figure(figsize=(8, 6))
sns.heatmap(conf_matrix, annot=True, fmt="d", cmap="Blues")
plt.xlabel("Predicted")
plt.ylabel("Actual")
plt.title("Confusion Matrix")
plt.show()


# In[17]:


# Step 6: Optional - ROC Curve
y_prob = rf_classifier.predict_proba(X_test)[:, 1]
fpr, tpr, thresholds = roc_curve(y_test, y_prob)
roc_auc = auc(fpr, tpr)


# In[18]:


plt.figure()
plt.plot(fpr, tpr, color='darkorange', lw=2, label='ROC curve (area = %0.2f)' % roc_auc)
plt.plot([0, 1], [0, 1], color='navy', lw=2, linestyle='--')
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.05])
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('Receiver Operating Characteristic')
plt.legend(loc="lower right")
plt.show()


# In[20]:


# Print ROC curve values
print("False Positive Rate (FPR):", fpr)
print("True Positive Rate (TPR):", tpr)
print("Area Under the Curve (AUC):", roc_auc)


# In[ ]:





# In[ ]:




