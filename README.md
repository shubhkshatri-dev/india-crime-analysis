# 📊 Indian Regional Crime & Socioeconomic Analysis (2015–2024)

A Multi-Tool Data Analytics Portfolio Project** analyzing 10-year crime trends and structural socioeconomic drivers across 36 Indian states and union territories using **MySQL**, **Python (Pandas, Seaborn)**, and **Power BI**.

---

## 📌 Executive Summary

Understanding the interaction between economic growth, urbanization, literacy, and crime patterns is essential for public policy and resource allocation. This project merges a 10-year panel dataset of reported crime incidents (2015–2024) with state-level socioeconomic indicators to answer key questions:
- **Which states bear the highest overall crime volume?**
- **How rapidly are digital offenses (Cybercrime & Fraud) outpacing physical/violent crimes?**
- **Do higher literacy or urbanization levels correlate directly with lower crime rates?**

---

## 🛠️ Tech Stack & Skills Demonstrated

| Tool | Focus Area | Key Techniques & Libraries Used |
| :--- | :--- | :--- |
| **MySQL** | Data Querying & Analytics | `CTE`, Multi-table `JOIN`, Aggregations |
| **Python** | Data Cleaning & EDA | `pandas`, `numpy`, `matplotlib`, `seaborn`, `scipy.stats` (Pearson correlation) |
| **Power BI** | Business Intelligence | Star-schema modeling, DAX measures, Interactive slicers, KPI dashboards |

---

## 📁 Repository Structure

```text
├── data/
│   ├── crime_data.csv             # Yearly crime records per state (2015–2024)
│   └── socioeconomic_data.csv     # Baseline state socioeconomic indicators
├── sql/
│   ├── schema.sql                 # Table creation and data load scripts
│   └── crime data query.sql    # Analytical SQL queries (CTEs, Window Functions)
├── python/
│   └── crime_data_analysis.py    # Python analysis script & visualization generator
├── powerbi/
│   └── crime_data_analysis.pbix       # Interactive Power BI Dashboard
└── README.md                      # Project documentation

🔍 Key Findings & Insights
Top Crime Centers: Uttar Pradesh, Maharashtra, West Bengal, and Bihar record the highest cumulative crime volume over the 10-year period (2015–2024).

The Digital Shift: Digital offenses (Cybercrime + Fraud) have experienced steep growth since 2015, converging toward total violent crime counts on a national level.

Urbanization & Digital Crime: Highly urbanized and higher-GDP states show a significantly higher proportion of digital/financial offenses relative to physical property crimes.

Socioeconomic Correlation: Cross-correlation analysis reveals that raw crime rates do not strictly follow literacy rates alone; regional urbanization and population density play a stronger structural role in determining crime composition.
