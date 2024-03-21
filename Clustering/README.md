# K-Means Clustering for ALS Patient Data

## Introduction
This Python script performs k-means clustering on ALS (Amyotrophic Lateral Sclerosis) patient data to identify patterns and clusters within the dataset. The script loads the training and testing data, preprocesses it by removing duplicates and handling missing values, selects relevant features, standardizes the features, and applies k-means clustering algorithm. Visualization of the clustering results is provided for both training and testing data.

## Prerequisites
- Python 3.x
- Libraries: numpy, pandas, matplotlib, scikit-learn

## Usage
1. Ensure that Python and the required libraries are installed.
2. Download the ALS patient dataset files (`ALS_TrainingData_2223.csv` and `ALS_TestingData_78.csv`) and place them in the same directory as the script.
3. Run the script using a Python interpreter.
4. The script will perform k-means clustering on the data and visualize the clustering results.

## Description
- The script first loads the training and testing data from CSV files.
- It preprocesses the data by removing duplicates and handling missing values.
- Relevant features for clustering are selected.
- The features are standardized to ensure consistent scaling.
- K-means clustering is applied to the standardized data.
- Clustering results are visualized using scatter plots for both training and testing data.

## Results
- The script provides visualizations of the clustering results for different values of k (number of clusters).
- Cluster centers are displayed on the scatter plots.
- The user can analyze the distribution of data points and clusters to identify patterns and insights.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any questions or inquiries, please contact [Sri Sai Durga Katreddi](mailto:katreddisrisaidurga@gmail.com).
