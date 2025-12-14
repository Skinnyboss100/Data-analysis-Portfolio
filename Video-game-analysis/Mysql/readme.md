# VG Sales Analysis — MySQL

## Overview

This folder contains MySQL scripts used to store, clean, transform, and analyze the Video Game Sales (VG Sales) dataset. The SQL layer serves as the structured analytics foundation of the project, enabling efficient aggregation, trend analysis, and performance comparisons across time, regions, platforms, genres, and publishers.

---

## Role of SQL in This Project

MySQL is used to:

* Validate and clean raw data after ingestion
* Enforce correct data types for analytical accuracy
* Perform aggregations and transformations not handled in Python
* Generate reusable queries for BI dashboards
* Calculate time-based metrics such as year-over-year (YoY) growth

---

## Data Preparation & Modeling

* Imported the cleaned VG Sales dataset into MySQL
* Converted year fields to integer and date-compatible formats
* Ensured consistency in categorical fields such as platform, genre, and publisher

---

## Key SQL Operations Performed

* Grouping and aggregation using `GROUP BY`
* Ranking and filtering top publishers, platforms, and genres,blockbuster games
* Use of window functions for trend and comparative analysis
* Regional sales comparisons (NA, EU, JP, Other)
* Identification and handling of missing or invalid year values

---

## Analytical Questions Answered Using SQL

* Which publishers generated the highest global sales?
* How did global video game sales change year over year?
* Which platforms dominated specific time periods?
* How do regional sales contributions compare across markets?
* How does publisher dominance evolve across console generations?

---

## Files Included

```
vgsales_sql_cleaning_and_analysis.sql           # Table creation and data types

```

---

## Output & Integration

The results of these SQL queries are used as data sources for Power BI and Tableau dashboards, ensuring consistent and reproducible metrics across visualizations.

MySQL-based data cleaning, transformation, and analytical queries for the VG Sales dataset.
