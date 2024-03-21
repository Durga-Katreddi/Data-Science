# Sentiment Analysis with Naive Bayes Classifier

## Overview
This project implements a Naive Bayes classifier for sentiment analysis using text data. The classifier predicts sentiment labels ('pos' for positive and 'neg' for negative) based on the words present in the text documents. The dataset used contains text documents with sentiment labels.

## Libraries Used
- numpy: For numerical operations.
- collections: For counting occurrences of words.
- sklearn.metrics: For evaluating the classifier using confusion matrix and ROC curve.
- seaborn: For visualizing the confusion matrix.
- matplotlib.pyplot: For plotting ROC curve.

## Function Definitions
- `read_documents(doc_file)`: Function to read documents from a file and extract labels and words.
- `train_nb(documents, labels, alpha=1.0)`: Function to train a Naive Bayes classifier using Laplace smoothing.
- `score_doc_label(document, label, probabilities)`: Function to score a document with a given sentiment label.
- `classify_nb(document, probabilities)`: Function to classify a document as positive or negative based on the highest score.
- `classify_documents(docs, probabilities)`: Function to classify a list of documents.
- `accuracy(true_labels, guessed_labels)`: Function to calculate classification accuracy.

## Training and Evaluation
- The Naive Bayes classifier is trained on a subset of the dataset.
- The classifier is evaluated on the remaining portion of the dataset using accuracy metric.
- Confusion matrix and ROC curve are plotted to further evaluate the classifier's performance.

## Error Analysis
- Misclassified documents are analyzed to understand the classifier's errors.

## Cross-Validation
- 5-fold cross-validation is performed to assess the classifier's generalization performance.
- The average accuracy across folds is calculated as the overall performance metric.

## Files
- `sentiment_analysis_nb.py`: Python script containing the code for data preprocessing, training, evaluation, and cross-validation.
- `all_sentiment_shuffled.rtf`: Text file containing the dataset used for sentiment analysis.

## Conclusion
This project demonstrates the implementation of a simple Naive Bayes classifier for sentiment analysis, providing insights into its performance and areas for improvement.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any questions or inquiries, please contact [Sri Sai Durga Katreddi](mailto:katreddisrisaidurga@gmail.com).
