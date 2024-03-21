# Breast Cancer Diagnosis Prediction

## Overview
This project aims to predict breast cancer diagnosis (Malignant or Benign) using machine learning techniques, specifically focusing on the Random Forest Classifier algorithm. The dataset used contains various features extracted from breast cancer images, such as mean radius, mean texture, mean area, and smoothness mean.

## Libraries Used
- pandas: For data manipulation and analysis.
- numpy: For numerical operations.
- matplotlib: For creating visualizations.
- seaborn: For statistical data visualization.
- sklearn: For machine learning modeling and evaluation.

## Data Preprocessing and Exploration
- The dataset is loaded from a CSV file named `data-breastCancer.csv`.
- The target variable (`diagnosis`) is encoded as 1 for Malignant and 0 for Benign.
- Exploratory data analysis (EDA) includes summary statistics, checking for missing values, distribution of the target variable, histograms of numerical features, correlation heatmap, and pairplots.

## Random Forest Model
- The dataset is split into training and testing sets (80% training, 20% testing).
- Random Forest Classifier with 100 estimators is trained on the training data.
- Model evaluation includes accuracy score and classification report.

## N-fold Cross Validation
- 5-fold cross-validation is performed to assess the model's generalization performance.

## Confusion Matrix
- Confusion matrix is plotted to visualize the model's performance in terms of true positive, true negative, false positive, and false negative predictions.

## ROC Curve (Optional)
- Receiver Operating Characteristic (ROC) curve is plotted along with Area Under the Curve (AUC) to evaluate the model's predictive performance.

## Files
- `breast_cancer_prediction.py`: Python script containing the code for data preprocessing, modeling, and evaluation.
- `data-breastCancer.csv`: CSV file containing the dataset used for analysis.

## Conclusion
This project demonstrates the application of machine learning algorithms for breast cancer diagnosis prediction, providing insights into potential diagnostic tools for healthcare professionals.
