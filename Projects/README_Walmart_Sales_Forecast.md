# Sales Forecasting with ML

## Project Overview
This project will focuses on sales forecasting using machine learning techniques. The dataset utilized for this project is the **Walmart Sales Forecasting** dataset from Kaggle. The objective is to develop predictive models to estimate future sales based on various features such as **store size, department, consumer price index (CPI), and other economic factors**.

## Dataset
The dataset includes historical sales data from Walmart stores. The key features used for forecasting include:
- **Store** - The store number.
- **Dept** - The department number.
- **Size** - The physical size of the store.
- **CPI** - Consumer Price Index.

## Methodology
The project follows these key steps:
1. **Data Exploration and Preprocessing**  
   - Handling missing values  
   - Feature engineering  
   - Data visualization for insights  

2. **Model Selection and Training**  
   - Baseline models for comparison  
   - Advanced machine learning models (e.g., Random Forest, XGBoost, or LSTMs for time-series forecasting)  
   - Hyperparameter tuning for optimization  

3. **Evaluation Metrics**  
   - Mean Absolute Error (MAE)  
   - Root Mean Squared Error (RMSE)  
   - R-Squared score  

## Results and Analysis
The results of different models will be analyzed and compared based on their accuracy and efficiency. Visualizations will be used to illustrate predictions against actual sales trends.

## Dependencies
Ensure you have the following Python libraries installed before running the notebook:
```bash
pip install pandas numpy matplotlib seaborn scikit-learn xgboost
```

## Usage
To run the notebook:
1. Open Jupyter Notebook:
   ```bash
   jupyter notebook
   ```
2. Load the `Brian_Reppeto_DSC_680_Project_1.ipynb` file.
3. Execute the cells in order to preprocess data, train models, and analyze results.

## Future Improvements
- Incorporating external economic indicators to enhance predictive power.
- Experimenting with deep learning models like LSTMs.
- Deploying the model as an interactive dashboard.

## Author
**Brian Reppeto**  


## License
This project is for educational purposes and follows standard academic integrity guidelines.
