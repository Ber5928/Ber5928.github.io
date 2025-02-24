# Heart Disease Prediction Using Machine Learning

## Project Overview
This project focuses on predicting coronary heart disease (CHD) using machine learning techniques. The dataset utilized for this project is the **Framingham Heart Study** dataset from Kaggle. The objective is to develop predictive models to estimate CHD risk based on various features such as **age, cholesterol levels, blood pressure, smoking status, diabetes status, and family history of heart disease**.

## Dataset
The dataset includes historical health data from the Framingham Heart Study. The key features used for prediction include:
- **Age** - The participant's age.
- **Cholesterol Levels** - Total cholesterol measurement.
- **Blood Pressure** - Systolic and diastolic readings.
- **Smoking Status** - Indicator of smoking behavior.
- **Diabetes Status** - Presence of diabetes.
- **Family History** - Family history of heart disease.

## Methodology
The project follows these key steps:
1. **Data Exploration and Preprocessing**  
   - Handling missing values  
   - Feature selection using `SelectKBest`  
   - Addressing class imbalance using **SMOTE**  

2. **Model Selection and Training**  
   - Logistic Regression for interpretability  
   - Random Forest Classifier for accuracy  
   - Hyperparameter tuning for optimization  

3. **Evaluation Metrics**  
   - ROC-AUC Score  
   - Precision, Recall, F1-Score  
   - Accuracy (with caution on imbalanced data)  

## Results and Analysis
The **Random Forest model combined with SMOTE** achieved an accuracy of **87%** and an **ROC-AUC score of 0.8706**, making it the best-performing model. Logistic Regression provided consistent results and remains valuable for its interpretability.

## Dependencies
Ensure you have the following Python libraries installed before running the notebook:
```bash
pip install pandas numpy matplotlib seaborn scikit-learn imbalanced-learn
```

## Usage
To run the notebook:
1. Open Jupyter Notebook:
   ```bash
   jupyter notebook
   ```
2. Load the `Heart_Disease_Prediction.ipynb` file.
3. Execute the cells in order to preprocess data, train models, and analyze results.

## Future Improvements
- Further hyperparameter tuning for model enhancement.
- Testing on external datasets to improve generalizability.
- Exploring deep learning approaches for improved predictive performance.

## Ethical Considerations
- **Data Privacy**: Ensuring compliance with healthcare regulations (e.g., HIPAA) to protect sensitive data.
- **Fairness and Bias**: Regular audits to ensure unbiased predictions across diverse demographics.
- **Transparency**: Explainable AI techniques (e.g., SHAP values) to clarify model decisions for healthcare professionals.

## Author
**Brian Reppeto**  
Heart Disease Prediction Project

## License
This project is for educational purposes and follows standard academic integrity guidelines.
