# 🎬 IMDB_Top_Charts_Project - Movie Data Analysis

## 📝 Overview
IMDB_Top_Charts_Project is a data-driven project aimed at analyzing IMDB's Top 250 movies. It involves web scraping, data storage, SQL-based querying, and exploratory data analysis (EDA) to extract meaningful insights. The project integrates multiple technologies to provide a comprehensive understanding of highly-rated movies and their trends over time.

## 📂 Project Structure
```
IMDB_Top_Charts_Project/
│── 📄 README.md                         # Project documentation
│── 📄 IMDB Insights.md                  # Extracted insights from data analysis
│── 📄 IMDB_TOP250.csv                    # Scraped IMDB Top 250 movie dataset
│── 📂 EDA-Visualizations                 # Contains images of graphs & charts
│── 📂 SQL Scripts Results                # Contains images of SQL query results
│── 📄 imdb_eda&viz.ipynb                  # Jupyter Notebook for EDA & Visualization
│── 📄 imdb_sql_insights.sql               # SQL scripts for querying insights
│── 📄 IMDB_TOP_CHARTS_SCRAPER.ipynb       # Web scraping script
```

## 🌐 Web Scraping
The project scrapes IMDB's Top 250 movies using Python. The script extracts the following movie details:
- 🎬 **Title**
- 📅 **Year of Release**
- ⭐ **IMDB Rating**
- 🎭 **Genres**
- ⏳ **Duration**
- 📝 **Number of Reviews**
- 🎥 **Director**

Scraped data is stored in `IMDB_TOP250.csv` for further analysis.

## 🗄️ Data Storage & Processing
- The raw movie data undergoes preprocessing to clean inconsistencies.
- Missing values are handled, data types are corrected, and unnecessary columns are removed.
- The structured dataset is used for SQL-based querying and visualization.

## 🛠️ SQL Queries & Analysis
Using **MySQL**, the project performs insightful queries, including:
- Fetching **top-rated movies** 🎥
- Identifying **most common genres** 🎭
- Analyzing **yearly trends in top movies** 📊
- Extracting **most influential directors** 🎬
- Determining **average movie duration by genre** ⏳

## 📊 Exploratory Data Analysis (EDA)
The project utilizes **Pandas, Matplotlib, and Seaborn** to generate visual insights, including:
- Rating distributions 📈
- Popular genres over time 🎭
- Director impact on ratings 🎥
- Year-wise movie trends 📅
- Review count vs. rating correlation 🔍

## 📌 Key Features
✔️ Automated IMDB movie data scraping  
✔️ Structured data storage & SQL querying  
✔️ Data visualization for better insights  
✔️ Clean and maintainable code structure  

## 🔧 Installation & Setup
Clone the repository:
```sh
git clone https://github.com/yourusername/IMDB_Top_Charts_Project.git
cd IMDB_Top_Charts_Project
```

Install required dependencies:
```sh
pip install pandas numpy requests beautifulsoup4 matplotlib seaborn mysql-connector-python
```
Run Jupyter Notebook to perform EDA and visualization.

## 🚀 Future Improvements
- Enhance data visualization with interactive charts 📊
- Extend SQL queries for deeper analysis 🛠️
- Develop a web dashboard for dynamic insights 🌍
- Integrate machine learning to predict movie ratings 🎞️

## 📜 License
This project is open-source and available for modification and distribution.

## 📩 Contributions & Feedback
Feel free to fork the repository, submit issues, or suggest improvements!

Happy Coding! 🚀

