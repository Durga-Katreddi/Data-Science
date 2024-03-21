# Monet Painting Price Prediction

## Introduction
This Python script performs simple linear regression and multivariate linear regression to predict the price of Monet paintings based on various features such as size, width, height, picture number, and house number. The script uses the scikit-learn library to train linear regression models and evaluate their performance using mean squared error, root mean squared error, and mean absolute error metrics.

## Prerequisites
- Python 3.x
- Libraries: pandas, numpy, matplotlib, scikit-learn

## Usage
1. Ensure that Python and the required libraries are installed.
2. Download the Monet dataset file (`monet.csv`) and place it in the same directory as the script.
3. Run the script using a Python interpreter.
4. The script will perform simple linear regression and multivariate linear regression on the data and display the results, including scatter plots, regression lines, and evaluation metrics.

## Description
- The script first imports necessary libraries and loads the Monet dataset from a CSV file.
- It preprocesses the dataset by renaming columns and creating a new feature ('size').
- Simple linear regression models are trained and evaluated using the 'size' and 'width' features.
- Multivariate linear regression is performed using multiple features ('height', 'width', 'picture', 'house').
- The script visualizes the regression results using scatter plots and regression lines.
- Evaluation metrics such as mean squared error, root mean squared error, and mean absolute error are calculated and displayed.

## Results
- Scatter plots and regression lines are provided to visualize the relationship between independent and dependent variables.
- Evaluation metrics are reported to assess the performance of the regression models.
- Users can analyze the predictive capabilities of the models and gain insights into the factors influencing the price of Monet paintings.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any questions or inquiries, please contact [Sri Sai Durga Katreddi](mailto:katreddisrisaidurga@gmail.com).
