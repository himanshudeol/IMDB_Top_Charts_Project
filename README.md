# 🎬 IMDB Top 250 Movies – Data Analytics Project  


## 🎯 Executive Summary  
The **IMDB Top 250 Movies Project** explores global cinema excellence through **data analytics**.  
By combining **web scraping, SQL querying, and Exploratory Data Analysis (EDA)**, this project identifies key patterns in top-rated movies and uncovers what factors contribute to cinematic success.  

Key takeaways reveal that:  
- **Drama and Crime dominate** top-rated genres.  
- **1990s–2000s were golden decades** for cinema.  
- **Directors like Christopher Nolan and Coppola** consistently deliver masterpieces.  

This project not only showcases technical and analytical expertise but also delivers **data-backed insights** into movie trends that shape audience preferences and industry direction.  

---

## 💡 Business Problem  
In today’s entertainment industry, platforms like Netflix, Amazon Prime, and Disney+ depend on understanding what makes a movie successful.  
While IMDB’s Top 250 list contains this valuable data, it is **unstructured and not directly usable for analytics**.  

**Key Questions:**  
- What patterns define top-rated movies across decades and genres?  
- How do factors like **duration, genre, and director** influence IMDB ratings?  
- What lessons can studios, producers, and platforms learn from these historical audience trends?  

**Goal:**  
To derive **actionable insights** from IMDB’s Top 250 dataset that reveal what drives cinematic excellence and audience engagement.  

---

## 🧩 Methodology  

### **1️⃣ Data Collection**  
- Web-scraped IMDB’s Top 250 movie data using **BeautifulSoup** and **Requests** in Python.  
- Extracted attributes:  
  - 🎬 Title  
  - 📅 Year of Release  
  - ⭐ IMDB Rating  
  - 🎭 Genre(s)  
  - ⏳ Duration  
  - 🧑‍💼 Director  
  - 📝 Number of Reviews  

### **2️⃣ Data Cleaning & Storage**  
- Processed data using **Pandas** to handle missing values and correct data types.  
- Exported structured data as `IMDB_TOP250.csv`.  
- Stored and queried the data in **MySQL** for advanced analysis.  

### **3️⃣ SQL Analysis**  
Executed SQL scripts to uncover structured insights:  
- Top-rated movies and directors  
- Genre frequency and average ratings  
- Decade-wise movie trends  
- Duration vs. rating relationships  

### **4️⃣ Exploratory Data Analysis (EDA)**  
Created visualizations using **Matplotlib** and **Seaborn** to explore:  
- Rating distributions 📈  
- Genre popularity over time 🎭  
- Director frequency and influence 🎥  
- Duration vs. rating trends ⏳  
- Review count patterns 🔍  

📸 *All visualizations and SQL outputs are available in:*  
- [`EDA-Visualizations`](https://github.com/himanshudeol/IMDB_Top_Charts_Project/tree/main/EDA-Visualizations)  
- [`SQL Scripts Results`](https://github.com/himanshudeol/IMDB_Top_Charts_Project/tree/main/SQL%20Scripts%20Results)  

---

## 🧠 Skills Demonstrated  

| Category | Tools & Concepts |
|-----------|------------------|
| **Programming** | Python (Pandas, BeautifulSoup, Matplotlib, Seaborn) |
| **Database** | MySQL – Joins, Aggregations, Filtering, Group By |
| **Data Analytics** | Cleaning, Feature Extraction, Correlation Analysis |
| **Visualization** | Count Plots, Heatmaps, Histograms, Rating Trends |
| **Data Storytelling** | Synthesizing SQL + EDA results into insights |

---

## 📊 Results & Business Recommendations  

### **🔍 Key Findings**  
- **Top Movies:**  
  *The Shawshank Redemption (9.3)*, *The Godfather (9.2)*, *The Dark Knight (9.0)*  
- **Decade Dominance:**  
  1990s and 2000s produced the most top-rated films.  
- **Genre Trends:**  
  Drama and Crime are the most frequent genres.  
- **Director Influence:**  
  Nolan, Coppola, Scorsese, and Spielberg dominate the list.  
- **Duration Patterns:**  
  Longer movies (>2 hours) often correlate with higher ratings.  
- **Audience Behavior:**  
  Modern films receive more votes due to higher digital engagement.  

### **🎥 Business Interpretation**  
| Stakeholder | Recommendation |
|--------------|----------------|
| **Streaming Platforms** | Prioritize **Drama** and **Crime** genres for new productions. |
| **Studios & Producers** | Invest in **long-format, story-rich films** with strong direction. |
| **Marketing Teams** | Use **director reputation** and **nostalgia appeal** as key promotion levers. |

---

## 🚀 Next Steps  

1. **Interactive Dashboard:**  
   Build a **Power BI or Streamlit dashboard** for live visual exploration.  
2. **Machine Learning Extension:**  
   Train models to **predict IMDB ratings** based on movie attributes.  
3. **Sentiment Analysis:**  
   Apply **NLP on audience reviews** to link textual sentiment with ratings.  
4. **Expanded Dataset:**  
   Include **Top TV Shows and Regional Films** for comparative entertainment analytics.  
5. **Data Refresh Automation:**  
   Schedule **automated web scraping** to keep datasets up to date.  

---

📊 *In essence, this project transforms raw movie data into actionable entertainment intelligence — revealing what truly makes a film timeless.*  

---

---

## 🪶 Author  
👤 **Himanshu Deol**  
📧 [LinkedIN Profile](https://www.linkedin.com/in/himanshudeol/)  
🔗 *“Turning data into cinematic insights.”*

---
