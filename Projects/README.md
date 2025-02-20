# NFL Data Analysis - Milestone 5

## Author: Brian Reppeto  
**Course:** DSC 540 - Week 12  
**Date:** 02/21/2024  

## Project Overview  
This project focuses on a multi-faceted analysis of NFL data, particularly from a fantasy football perspective. Data was collected, cleaned, and analyzed to evaluate factors such as team venues, game characteristics, player performances, and their impact on fantasy football. The analysis spans from 2018 to 2023 and consists of five key milestones.

## Data Collection and Cleansing  
Data was sourced from various platforms, including APIs, web scraping, and CSV files. The preprocessing phase involved:  
- Removing unnecessary columns  
- Normalizing player statistics  
- Consolidating multi-year data into a structured dataset  

Standardizing data across multiple sources was essential for ensuring accuracy and consistency.

## Feature Engineering & Analysis  
Advanced data manipulation techniques were applied to uncover trends affecting fantasy football outcomes. Key focus areas included:  
- Team venues and game environments (indoor vs. outdoor, turf type)  
- Statistical analysis and visualization to highlight influential patterns  
- Insights into player performances and team success rates  

The project leveraged Python libraries such as Pandas, Matplotlib, and Seaborn for analysis and visualization.

## Ethical Considerations  
This analysis takes a strong ethical stance regarding the use of sports data. Considerations include:  
- Ensuring privacy and avoiding exposure of sensitive player information  
- Relying on reputable sources to maintain data accuracy  
- Addressing potential gambling-related risks and the financial impact of fantasy football  
- Avoiding the commodification of athletes and promoting responsible data usage  

## Conclusion  
This project highlights both the analytical and ethical complexities of sports analytics. It provides valuable insights into how environmental factors influence player performance while ensuring that data analysis is conducted responsibly.

## Technologies Used  
- **Python** (Pandas, Matplotlib, Seaborn)  
- **SQLite** (Database for structured storage)  
- **Data Sources:** Web scraping, APIs, CSV files  

## Installation & Usage  
1. Install required dependencies:  
   ```bash
   pip install pandas matplotlib seaborn sqlite3
   ```
2. Run the Jupyter Notebook to explore the analysis:  
   ```bash
   jupyter notebook Brian_Reppeto_540_week_11_12_Milestone_5.ipynb
   ```
3. Ensure `DSC540.db` is available in the working directory for database operations.

## License  
This project is for educational purposes only.
