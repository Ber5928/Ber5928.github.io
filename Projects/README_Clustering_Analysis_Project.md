# Clustering Analysis Project

## Project Overview

This project explores clustering techniques applied to a dataset to identify hidden patterns and segment data into meaningful clusters. The analysis leverages machine learning algorithms like **K-Means** and dimensionality reduction using **PCA (Principal Component Analysis)** to visualize clusters.

### Author: Brian Reppeto  


---

## Table of Contents

1. **Project Description**  
2. **Data**  
3. **Libraries Used**  
4. **Key Steps**  
5. **How to Run the Notebook**  
6. **Results and Visualizations**  
7. **License**  

---

## Project Description

In this project, we use clustering methods to analyze the provided dataset. The main objectives include:

- **Preprocessing the data** (standardization and scaling).  
- **Applying K-Means clustering** to segment the dataset.  
- **Evaluating clusters** using the Silhouette Score.  
- **Using PCA** for dimensionality reduction to visualize clusters in 2D.  

---

## Data

- **Dataset**: `als_data.csv`  
- **Description**: The dataset used in this project contains information related to ALS (Amyotrophic Lateral Sclerosis) patients. The goal is to cluster patients based on relevant features.

---

## Libraries Used

- `pandas`  
- `numpy`  
- `scikit-learn`  
- `matplotlib`  
- `seaborn`  

---

## Key Steps

1. **Load and Preprocess Data**  
   - Import the dataset.  
   - Standardize the features using `StandardScaler`.  

2. **Clustering with K-Means**  
   - Apply the K-Means clustering algorithm.  
   - Determine the optimal number of clusters using the Elbow Method and Silhouette Score.  

3. **Dimensionality Reduction**  
   - Use PCA to reduce the dataset dimensions for visualization.  

4. **Visualization**  
   - Plot the clusters to visualize the results.  

---

## How to Run the Notebook

1. Clone the repository:
   ```bash
   git clone <repository-url>
