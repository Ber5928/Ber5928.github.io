# Predicting Patient Readmissions for Diabetic Patients

## Project Overview

This project focuses on predicting 30-day readmissions for diabetic patients. Hospital readmissions pose a significant financial burden and often indicate preventable complications. By leveraging machine learning techniques, this project aims to identify key factors contributing to readmissions and create predictive models to assist healthcare providers in mitigating unnecessary readmissions.

### Author: Brian Reppeto  


---

## Table of Contents

1. **Project Narrative**  
2. **Data Import and Setup**  
3. **Exploratory Data Analysis (EDA)**  
4. **Model Building and Evaluation**  
5. **Findings and Recommendations**  
6. **How to Run the Notebook**  

---

## Project Narrative

Hospital readmissions within 30 days post-discharge are a critical challenge in healthcare. Predicting readmissions can help reduce costs and improve patient care. This project explores machine learning methods to predict readmissions for diabetic patients, aiming to:

- Identify key predictors of readmissions.  
- Develop machine learning models for prediction.  
- Provide actionable insights for healthcare improvement.  

---

## Data

- **Dataset**: `diabetic_data.csv`  
- **Description**: The dataset contains clinical data for diabetic patients, including demographics, diagnoses, lab tests, and treatment history.  

---

## Libraries Used

- `pandas`  
- `numpy`  
- `matplotlib`  
- `seaborn`  
- `scikit-learn`  

---

## Key Steps

### 1. Data Import and Preprocessing

- Loading the dataset  
- Handling missing values  
- Encoding categorical variables  
- Scaling numerical features  

### 2. Exploratory Data Analysis (EDA)

- Visualizing key features  
- Analyzing correlations and trends in readmissions  

### 3. Model Building and Evaluation

- Splitting the dataset into training and testing sets  
- Using machine learning models such as:  
  - Logistic Regression  
  - Random Forest  
  - GridSearchCV for hyperparameter tuning  
- Evaluating models using metrics like accuracy, precision, recall, and F1-score  

---

## Findings and Recommendations

- Key factors contributing to readmissions were identified.  
- Recommendations for healthcare providers to reduce readmissions based on model insights.  

---

## How to Run the Notebook

1. Clone the repository:
   ```bash
   git clone <repository-url>
