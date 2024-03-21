# Convolutional Neural Network (CNN) for Image Classification

## Introduction
This Python script implements a Convolutional Neural Network (CNN) for image classification using TensorFlow and Keras. The script trains a CNN model on a dataset of images belonging to six different classes and evaluates its performance on a separate test set. Additionally, it provides functionality to perform k-fold cross-validation using Stratified Shuffle Split.

## Prerequisites
- Python 3.x
- Libraries: numpy, tensorflow, scikit-learn

## Usage
1. Ensure that Python and the required libraries are installed.
2. Download the dataset containing training and testing images.
3. Update the `train_path` and `test_path` variables with the paths to the training and testing data directories.
4. Run the script using a Python interpreter.
5. The script will train the CNN model, evaluate its performance, and display the model summary.

## Description
- The script utilizes TensorFlow and Keras to define and train a CNN model for image classification.
- It loads the training and testing data using ImageDataGenerator.
- The data is preprocessed by rescaling pixel values and performing data augmentation (shear, zoom, horizontal flip) for the training set.
- The CNN model architecture consists of convolutional layers followed by max-pooling layers and dense layers.
- After compiling the model, it is trained on the training data with validation on a separate validation set.
- The trained model is evaluated on the test set to calculate accuracy.
- Optionally, k-fold cross-validation is performed using Stratified Shuffle Split.

## Results
- The script outputs the training and validation accuracy and loss for each epoch during model training.
- After training, it evaluates the model's performance on the test set and displays the accuracy.
- Additionally, it provides a confusion matrix and a classification report for further analysis of model performance.

## Model Architecture
- The CNN model architecture used in the script consists of convolutional layers followed by max-pooling layers.
- After the convolutional layers, there are dense layers with ReLU activation functions.
- The final dense layer has softmax activation for multi-class classification.

## Cross-Validation
- The script includes functionality for performing k-fold cross-validation using Stratified Shuffle Split.
- This helps in obtaining more reliable estimates of model performance by training and evaluating the model on different subsets of data.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any questions or inquiries, please contact [Sri Sai Durga Katreddi](katreddisrisaidurga@gmail.com).
