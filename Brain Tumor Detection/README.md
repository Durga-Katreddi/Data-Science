# Brain Tumor Detection Using Convolutional Neural Network: A Hybrid Learning Approach

## Abstract
Detecting brain tumors early is crucial for effective treatment. This project employs a hybrid learning approach, combining machine learning algorithms with deep learning techniques, to improve the accuracy and efficiency of brain tumor detection from MRI images. The README provides an overview of the project, including its motivation, methodology, model architecture, and experimental results.

## Introduction
Brain tumors are a significant health concern, and traditional methods of detection from MRI images can be time-consuming and prone to inaccuracies. This project explores the use of Convolutional Neural Networks (CNNs) augmented with machine learning algorithms for more accurate and efficient brain tumor detection.

## Methodology
- **Dataset**: The dataset comprises images related to brain tumor detection, classified into positive and negative examples.
- **Data Preprocessing**: Techniques such as image augmentation and feature engineering were applied to enhance the dataset.
- **Clustering**: Clustering algorithms were used for image segmentation to isolate tumor regions.
- **Model Architecture**: The CNN architecture includes convolutional layers for feature extraction, pooling layers for spatial downsampling, and fully connected layers for classification.
- **Training**: The model was trained using the Adam optimizer and evaluated using metrics such as accuracy, precision, recall, and F1 score.

## Experimental Results
- The model achieved an accuracy of 84.80% on test data, with a precision of 81.29%, recall of 91.45%, and F1 score of 94.15%.
- TensorBoard was used to visualize training progress, showing a gradual increase in validation accuracy.

## Literature Review
Summaries of relevant research papers discussing similar approaches to brain tumor detection using CNNs and machine learning.

## Conclusion
The hybrid learning approach presented in this project shows promising results for brain tumor detection. Further fine-tuning and hyperparameter tuning could enhance model performance. Overall, early and accurate detection of brain tumors can significantly improve patient outcomes.

## References
- S. Arora and M. Sharma, "Deep Learning for Brain Tumor Classification from MRI Images," 2021 Sixth International Conference on Image Information Processing (ICIIP), Shimla, India, 2021.
- F. l. HAMEED and O. DAKKAK, "Brain Tumor Detection and Classification Using Convolutional Neural Network (CNN)," 2022 International Congress on Human-Computer Interaction, Optimization and Robotic Applications (HORA), Ankara, Turkey, 2022, pp. 1-7.
- D´ıaz-Pernas, F. J.,Mart´ınez-Zarzuela, M., Anton-Rodr ´ ´ıguez, M., & Gonzalez-Ortega, D. (2021), "A Deep Learning Approach for Brain Tumor Classification and Segmentation Using a Multiscale Convolutional Neural Network," Healthcare (Basel), 9(2), 153.
- Isensee, F., Kickingereder, P., Wick, W., Bendszus, M., & Maier-Hein, K. H. (n.d.), "Brain Tumor Segmentation and Radiomics Survival Prediction: Contribution to the BRATS 2017 Challenge," Healthcare.
- Tonmoy Hossain; Fairuz Shadmani Shishir; Mohsena Ashraf; MD Abdullah Al Nasim; Faisal Muhammad Shah(2019), "Brain Tumor Detection Using Convolutional Neural Networks," DOI: 10.1109/ICASERT.2019.8934561, Bangladesh.
- Sunanda Das; O. F. M. Riaz Rahman Aranya; Nishat Nayla Labiba(2019), "Brain Tumor Classification Using Convolutional Neural Network,"DOI: 10.1109/ICASERT.2019.8934603.
- Masoumeh Siar, Mohammad Teshnehlab ,2020Brain Tumor Detection Using Deep Neural Network and Machine Learning Algorithm," DOI:10.1109/ICCKE48569.2019.8964846.

## Usage
To use the provided code:
1. Install the necessary dependencies.
2. Download the dataset and preprocess it according to the instructions provided.
3. Train the model using the provided scripts.
4. Evaluate the model's performance using the provided metrics.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any questions or inquiries, please contact [Sri Sai Durga Katreddi](mailto:katreddisrisaidurga@gmail.com).
