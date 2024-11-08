# Dallas Food Inspections Analysis Project

## Project Overview
This project analyzes restaurant and food establishment inspection data for the City of Dallas. The goal is to create an end-to-end data pipeline that ingests inspection data, transforms it into a structured data model, and generates insights through interactive BI dashboards. The project aims to support Dallas health officials in monitoring compliance, identifying high-risk establishments, and improving food safety across the city.

## Data Source
The dataset for this analysis is sourced from the **Dallas Open Data Portal**, focusing on **Restaurant and Food Establishment Inspections** data from October 2016 to the present. The dataset includes inspection dates, scores, types and numbers of violations, and establishment details.

### Data Links
- [Dallas Open Data API](https://www.dallasopendata.com/api/odata/v4/dri5-wcct)
- [Dallas Open Data Story](https://www.dallasopendata.com/stories/s/m7ed-bf7q)

## Project Phases and Deliverables

### Part 1: Data Extraction and Staging
- **Data Loading**: Extract data from the Dallas Open Data portal and load it into a staging area in Azure SQL.
- **Data Profiling**: Perform data profiling to validate structure, data types, and completeness futhuremore staging data.

### Part 2: Dimensional Modeling
- **Identify Dimensions and Facts**: Establish core entities such as `Restaurants`, `Inspections`, and `Violation`.
- **Create Dimensional Model**: Design a star schema with a central fact table for inspection results and dimension tables for supporting details.
- **Database Schema Creation**: Implement the model in Azure SQL using DDL scripts.

### Phase 3: Data Integration and Transformation
- **ETL Workflow Development**: Design Alteryx workflows to transform and load data from staging tables into the dimensional model.
- **Data Transformation**:
  - Generate surrogate keys for each dimension.
  - Standardize date formats, ensure referential integrity, and aggregate metrics as needed.
- **Load Integration Tables**: Populate fact and dimension tables with transformed data.

### Phase 4: Business Intelligence and Dashboarding
- **Power BI Dashboards**:
  - **Inspection Trends Over Time**: Visualize frequency of inspections and identify trends.
  - **Pass/Fail Analysis**: Overview of passing vs. failing scores.
  - **Top Violations**: Most common types of violations by establishment.
  - **Top and Bottom Establishments**: Analysis of most and least compliant establishments.
- **Tableau Dashboards**:
  - **Map of Inspection Results**: Geospatial representation of inspection outcomes.
  - **Performance by Neighborhood**: Neighborhood-wise breakdown of scores and violation severity.
  - Interactive filters for custom insights by score range, violation type, or establishment type.

## Key Insights and Business Value
- **Inspection Score Trends**: Identified trends in inspection scores, highlighting potential areas for increased oversight.
- **Violation Patterns**: Most common violations and the establishments with repeated non-compliance.
- **High-risk Establishments**: Insights to prioritize follow-up inspections and focus on high-risk areas.
- **Geospatial Analysis**: Enabled visualization of inspection patterns by neighborhood, guiding resource allocation.

## Tools and Technologies
- **Data Extraction and Transformation**: Alteryx, SQL
- **Database Management**: Azure SQL
- **Data Modeling**: ER/Studio for dimensional modeling
- **Business Intelligence**: Power BI and Tableau for data visualization

## Conclusion
The Dallas Food Inspections Analysis Project transformed raw inspection data into a structured and accessible format, enabling city officials to make data-driven decisions to improve food safety standards. By integrating Azure SQL, Alteryx, Power BI, and Tableau, this project provided a full pipeline from data ingestion to BI visualization, showcasing a robust approach to public health monitoring and compliance enforcement.
