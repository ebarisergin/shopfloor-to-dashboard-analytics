
# End-to-End Manufacturing & Quality Operations Analytics

This project is an end-to-end Industrial Engineering and data analytics application designed to optimize operational efficiency, reduce downtime, and monitor quality metrics in real-time within a production facility. It integrates **Data Warehouse Management (SQL)**, **Data Modeling & DAX (Power BI)**, and **Operational KPI Dashboards (Excel)**.

---

## Project Architecture & Workflow

The project simulates a modern data analyst workflow and is structured across 3 main layers:

1. **Data Layer (SQL):** Storing production logs and line definitions in a relational database architecture, optimizing analytical queries for volume and defect analysis.
2. **Modeling & Visualization (Power BI):** Implementing star-schema data modeling, custom Date Table integrations, and Time-Intelligence DAX to build a dynamic executive dashboard.
3. **Operational Reporting (Excel):** Preparing ad-hoc analytical pivot tables and regional map visualizations for quick managerial insights.

---

## 1. SQL Database Architecture & Query Design
The backend core utilizes a primary-foreign key relationship established between `production_lines` (PK) and `production_logs` (FK) tables to maintain relational data integrity.

### Featured Analytical Queries:
* **Quality Limit Filtering:** Immediate isolation of critical manufacturing shifts exceeding defect thresholds (`Hatali_Urun_Miktari > 50`).
* **Line Performance Aggregation (`INNER JOIN`):** Merging dimensional tables with fact logs to calculate the total manufacturing output per physical line using `GROUP BY` logic.
* **Bottleneck Analysis (`HAVING`):** Identifying underperforming production lines with total outputs under 10,000 units, sorted in descending order (`DESC`) to prioritize operational improvement.

---

## 2. Power BI & Advanced Data Modeling
An interactive, **2-page deep-dive business intelligence report** was developed to empower stakeholders with data-driven decision-making capabilities.

* **Page 1: Executive Dashboard:** High-level KPIs monitoring total production volumes, target completion rates, and overall operational health.
* **Page 2: Quality & Defect Analysis:** Tracking Year-to-Date (YTD) cumulative defect rates via complex DAX algorithms (`TOTALYTD`, `CALCULATE`) and deploying an advanced **Scatter Chart** to cross-examine volume against error density across lines.
* **Technical Details:** Star Schema implementation, customized Date Table linking, and responsive color-theming aligned with corporate standards.


### Dashboard Previews

#### Power BI - Executive Overview
![Executive Dashboard](screenshots/powerbi_executive.png)

#### Power BI - Quality & Defect Analysis
![Quality Analysis](screenshots/powerbi_quality.png)

#### Excel - Operational Reporting
![Excel Dashboard](screenshots/excel_dashboard.png)

---


## Project Repository Structure

 Project_Manufacturing_Analytics/
│
├── 📁 screenshots/
│   ├──  powerbi_executive.png
│   ├──  powerbi_quality.png
│   └──  excel_dashboard.png
│
├──  Manufacturing_Quality_DeepDive_2026.pbix
├──  Production_Queries_2026.sql
├──  Production_Data_Source.xlsx
└──  README.md