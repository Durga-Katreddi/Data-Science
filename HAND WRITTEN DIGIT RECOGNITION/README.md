
# Handwritten Digit Recognition with PyTorch

This project implements a Convolutional Neural Network (CNN) to recognize handwritten digits from the MNIST dataset using PyTorch. The goal is to classify images of handwritten digits (0-9) with high accuracy.

## Table of Contents

- [Introduction](#introduction)
- [Dataset](#dataset)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Training](#training)
- [Testing](#testing)
- [Results](#results)
- [License](#license)

## Introduction

The MNIST dataset is a classic in the field of machine learning and computer vision. It consists of 60,000 training images and 10,000 testing images of handwritten digits. This project aims to leverage a CNN architecture to achieve high accuracy in recognizing these digits.

## Dataset

The dataset used in this project is the MNIST dataset, which can be downloaded automatically using the `torchvision` library. 

- **Training Set:** 60,000 images
- **Test Set:** 10,000 images

## Requirements

Make sure you have the following libraries installed:

- Python 3.6 or higher
- PyTorch
- torchvision
- matplotlib

You can install the required libraries using:

- bash
pip install torch torchvision matplotlib

## Training

The model is trained using the **Adam optimizer** and **Cross Entropy Loss** function. You can adjust the learning rate and number of epochs in the training script.

### Training Function

The training function iterates through the training data, performs forward and backward passes, and updates the model parameters.

## Testing

After training, the model can be evaluated on the test dataset. The results include average loss and accuracy.

## Visualizing Predictions

The script also visualizes the first 10 correct and incorrect predictions, providing insights into the model's performance.

## Results

The model achieves an accuracy of **XX%** on the test set (replace XX with your actual accuracy). The following images show correct and incorrect predictions made by the model.

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.


