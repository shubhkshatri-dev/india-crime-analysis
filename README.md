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
| **MySQL / ANSI SQL** | Data Querying & Analytics | `CTE`, Window Functions (`LAG`, `NTILE`, `DENSE_RANK`), Multi-table `JOIN`, Aggregations |
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
│   └── exploratory_queries.sql    # Analytical SQL queries (CTEs, Window Functions)
├── python/
│   └── crime_socio_analysis.py    # Python analysis script & visualization generator
├── powerbi/
│   └── crime_dashboard.pbix       # Interactive Power BI Dashboard
├── images/
│   └── crime_socioeconomic_analysis.png  # Consolidated 4-panel analysis plot
└── README.md                      # Project documentation
