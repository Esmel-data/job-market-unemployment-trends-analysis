# job-market-unemployment-trends-analysis
End-to-end data analytics project analyzing job market and unemployment trends across 20 US regions (2023-2025) using Python, SQL (MySQL Workbench), and Power BI 


# 📊 Job Market & Unemployment Trends — End-to-End Analytics Project

## 1. Project Overview

The labor market is a strategic macroeconomic indicator for both public and
private decision-makers. This project analyzes 1,000 observations across
20 US regions over the 2023–2025 period to identify the structural factors
driving unemployment and job market dynamics.

Central business question:
> To what extent does the unemployment rate vary by geographic location,
> education level, and demographic structure — and how do these combined
> factors influence the volume and nature of available job offers?

Key findings at a glance:
- Average unemployment rate: 8.63%
- Total job offers analyzed: 2 million
- Average market tension index: 313.18
- Annual unemployment variation: -0.01% (improving trend in 2025)

The final deliverable is a 4-page decisional Power BI dashboard designed
for managers and executives with no technical background.


## 2. Dataset

| Parameter          | Value                                         |
|--------------------|-----------------------------------------------|
| Source             | Job Market & Unemployment Trends Dataset      |
| Rows               | 1,000 observations                            |
| Raw columns        | 8 variables                                   |
| Final columns      | 12 variables (after feature engineering)      |
| Period covered     | 2023 — 2025                                   |
| Geographic scope   | 20 US regions                                 |


## 3. Tools & Technologies

| Tool                  | Role in the pipeline                                               |
|-----------------------|--------------------------------------------------------------------|
| Python (pandas)   | Data loading, quality audit, cleaning, feature engineering, export |
| MySQL Workbench   | 10 analytical SQL queries, structured data storage                 |
| Power BI          | 4-page decisional dashboard with DAX measures and slicers          |
| Gamma             | Executive presentation       |


## 4. Project Steps

### Step 0 — Business Question Definition
Defined a central, multi-dimensional business question crossing 5 dataset
variables to guide the entire analytical pipeline with a consultant-level
formulation.

### Step 1 — Data Quality Audit (Python)
- Inspected variable types across 8 columns
- Checked for missing values — none detected
- Detected outliers using IQR method on 4 numerical variables
- Applied IQR capping to neutralize extreme values while preserving data volume
- Validated dataset integrity before any transformation

### Step 2 — Type Conversion & SQL/Power BI Compatibility (Python)
- Converted `date` from string to datetime format
- Normalized `region` and `in_demand_skills` to Title Case
- Verified numerical bounds for `college_degree_percentage`
- Confirmed full compatibility with MySQL and Power BI data types

### Step 3 — Business Renaming (Python)
- Renamed all 8 columns to decision-friendly French business names
- Eliminated technical jargon for non-technical audience readability
- Ensured snake_case compatibility across Python, SQL, and Power BI

### Step 4 — Feature Engineering (Python)
Created 8 new business variables enriching the analytical depth:
- Temporal: `year`, `month`
- Segmentation: `unemployment_level`, `age_range`,
  `education_level`, `offer_categories`
- Composite: `market_tension` (market tension index),
  `skills_family` (Tech & Data / Marketing & Com /
  Trade & Sales / Others)

### Step 5 — Final Variable Selection (Python)
- Audited all 16 variables for decisional relevance
- Dropped 4 redundant columns: `id`, `date`, `average_age`, `graduate_rate`
- Exported final clean dataset: `job_market_unemployment_trends.csv` (12 columns, 1,000 rows)

### Step 6 — SQL Analysis (MySQL Workbench)
- Imported clean dataset via SQLAlchemy + pymysql using `.to_sql()`
- Executed 10 targeted analytical SQL queries covering 5 decisional axes:
  geographic, temporal, demographic, education, and skills
- Key finding: Tech & Data sector alone accounts for 2.17M job offers —
  15x more than any other sector

### Step 7 — Decisional Dashboard (Power BI)
- Built 15 DAX measures (averages, totals, ratios, annual variations)
- Designed 4-page dashboard with 8 synchronized slicers
- Pages: Executive Summary / Geographic / Demographic & Training /
  Skills & Seasonality

### Step 8 — Professional Analytical Report
- Structured 6-section report covering context, dataset summary, EDA,
  SQL analysis with actual result screenshots, Power BI dashboard captures,
  and 5 actionable business recommendations

## 5. Dashboard Preview

### Page 1 — Executive View (Overall Summary)
> 4 KPI cards (unemployment rate, total offers, market tension, annual variation)
> + Top 10 regions bar chart + annual trend line chart

### Page 2 — Geographical Analysis
> Bubble map by region + Top 5 market tension bar chart
> + Scatter plot unemployment vs job offers + regional profile table

### Page 3 — Demographic Analysis & Training
> Donut chart by age range + bar charts by education level
> + matrix age range × education level

### Page 4 — Skills & Seasonality Analysis
> Monthly job offers line chart + skills ranking bar charts
> + stacked bar chart by region × skill family


## 6. Key Results & Insights

1. San Diego leads unemployment at 9.79% — along with Austin (9.24%),
   Jacksonville (9.16%), and Los Angeles (9.06%), these regions require
   priority employment policy interventions.

2. Tech & Data dominates the job market with 2.17 million total offers —
   over 15x the volume of the next sector, signaling a structural digital
   skills gap that training programs must urgently address.

3. Unemployment is improving in 2025 — after peaking at 8.71% in 2024,
   the average rate declined to 8.44% in 2025, confirming a positive
   market trend.

4. August and December are peak recruitment months (248K and 250K offers
   respectively) — placement campaigns should be launched 6 to 8 weeks
   in advance to maximize matching efficiency.

5. High-performing regions share a common profile — Tech & Data sector,
   medium-to-high education level, and active age group (30–45). Austin and
   San Antonio achieve unemployment rates as low as 2.0–2.1%, a replicable
   model for underperforming territories.


## 7. How to Run

### Prerequisites
* Python 3.8+
* MySQL Workbench installed and running locally
* Power BI Desktop (free) installed

### Steps

1. Clone the repository


2. Run the Python pipeline in Jupyter Notebook

* Open `job_market_unemployment_trends.ipynb`
* Execute cells sequentially (Steps 1 to 5)
* Output generated: `job_market_unemployment_trends.csv`

3. Import data into MySQL Workbench

* Create a database named `esmel_db`
* Run the SQLAlchemy import script (Step 6 notebook cell)
* Execute the 10 SQL queries in MySQL Workbench

4. Open the Power BI Dashboard

* Open `job_market_unemployment_trends.pbix` in Power BI Desktop
* Refresh data source to load the clean dataset

5. Dataset

* Raw file: `job_market_unemployment_trends.csv`
* Clean file generated after notebook execution: `job_market_unemployment_trends.csv`


## 📁 Repository Structure
````
job-market-unemployment-trends-analysis/
├── job_market_unemployment_trends.pdf (presentation gamma)
├── job_market_unemployment_trends.csv   # Raw dataset
├── job_market_unemployment_trends.ipynb            # Full Python pipeline (Steps 1-5)
├── job_market_unemployment_trends.pbix            # Power BI dashboard file
├── job_market.sql
└── README.md
````

---

## 👤 Author

ESMEL
Data Analyst | Python · SQL · Power BI
[LinkedIn](www.linkedin.com/in/esmel-amari) 
