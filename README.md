🚘 BMW Global Sales & Growth Analytics Dashboard


![](https://github.com/harmanpreet07/BMW-Worldwide-sales-analysis/blob/main/bmw%20dashboard.png)


📊 Project Overview

This project analyzes BMW’s worldwide sales performance using Power BI, SQL, and Python. The goal is to uncover insights into regional performance, model popularity, sales trends, and growth rates — helping visualize how BMW performs across markets, fuel types, and years.

🎯 Objectives

Analyze global and regional sales patterns.

Identify top-performing BMW models and fuel types.

Track YoY (Year-over-Year) growth and average sales trends.

Provide interactive visuals for quick decision-making.

🧠 Key Insights

💰 Total Revenue: $19.01T across all regions.

🌍 Top Regions: Europe and Asia lead global sales.

🚗 Best-Selling Model: BMW 7 Series.

⚡ Electric and Hybrid models show strong growth momentum.

📈 Consistent YoY growth of 7.4%, indicating market expansion.

🧩 Tools & Technologies

Power BI → Dashboard Design & Visualization

SQL → Data Exploration, Aggregation & KPIs

Python (Pandas, NumPy) → Data Cleaning & Preprocessing

⚙️ DAX Measures Used
Total Revenue = SUM(Sales[Revenue])
Total Sales = SUM(Sales[Units_Sold])
Avg Sales per Model = DIVIDE([Total Revenue], DISTINCTCOUNT(Sales[Model]), 0)
YoY Growth = 
VAR PrevYear = CALCULATE([Total Revenue], DATEADD(Calendar[Date], -1, YEAR))
RETURN DIVIDE([Total Revenue] - PrevYear, PrevYear)
Top Model = 
TOPN(1, SUMMARIZE(Sales, Sales[Model], "Total", [Total Revenue]), [Total Revenue], DESC)
Top Country = 
TOPN(1, SUMMARIZE(Sales, Sales[Country], "Total", [Total Revenue]), [Total Revenue], DESC)

📈 Dashboard KPIs

Total Revenue

Total Units Sold

Average Sales per Model

YoY Growth %

Top Selling Model (Global)

🧭 Dashboard Visuals

Sales by Year & Transmission Type (Line Chart)

Sales by Fuel Type (Donut Chart)

Sales by Region (Pie Chart / Map)

Top 5 Models by Sales (Bar Chart)

Interactive Filters → Year, Model, Region

🎨 Dashboard Theme

The dashboard is designed with a BMW speedometer-inspired theme, featuring:

A dark background to match BMW’s luxury aesthetic.

Blue & silver accents symbolizing performance and elegance.

Clean KPI cards and minimalistic charts for clarity.

🧾 Key Learnings

Implemented advanced DAX functions for dynamic KPIs.

Improved storytelling through data visualization design principles.

Hands-on experience in integrating Python, SQL, and Power BI workflows.
