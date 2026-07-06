# Global Video Game Sales Analysis

Analysis of global video game sales data (16,000+ titles) to understand what drives commercial
success in the games industry — by platform, genre, publisher, region, and console generation.

**Tools:** Python (Pandas) · SQL (MySQL) · Power BI / Tableau

---

## Business Question

Which platforms, genres, and publishers actually win in the games market, and does that answer
change depending on which region you're looking at? This project traces sales patterns across
console generations and regions to find out what consistently sells — and where regional
preferences diverge from the global picture.

## Objectives

- Analyze global and regional video game sales trends over time
- Identify top-performing publishers, platforms, and genres
- Understand regional differences in consumer preferences (NA, EU, JP, Other)
- Demonstrate an end-to-end analytics workflow: Python for cleaning/EDA, SQL for structured
  querying, Power BI/Tableau for visualization

## Dataset

- 16,000+ video game titles with global and regional sales figures (NA, EU, JP, Other), platform,
  genre, publisher, and release year

## Repo Structure

```
video-game-sales-analysis/
├── README.md
├── sql/
│   └── video_game_sales_analysis.sql
├── notebook/
│   └── video_game_sales_analysis.ipynb
├── dashboard/
│   └── video_game_sales.pbix  (or .twbx)
└── images/
    └── (dashboard screenshots / charts)
```

## Key Insights

**1. Sales peaked between 2003 and 2008**, aligning with the seventh console generation
(PS3/Xbox 360/Wii) — the industry's biggest commercial window before digital distribution and
mobile gaming reshaped the market.

**2. Action and Sports are the most consistently strong genres**, outperforming other categories
across multiple regions rather than winning in just one market.

**3. North America is the largest single market**, accounting for the biggest share of global
sales — relevant for any publisher deciding where to prioritize a launch.

**4. Publisher dominance shifts with console generations.** No single publisher holds the top spot
across the whole dataset — leadership rotates as new hardware generations and genres take over,
suggesting success is tied more to riding platform cycles than brand loyalty alone.

**5. Two titles dominate all-time sales:** *Wii Sports* leads with over 82 million copies sold
globally, followed by *Super Mario Bros.* at roughly 40 million — both bundled or first-party
titles tied to hardware launches, not standalone releases.

## What This Means

- Genre and platform timing matter more than publisher reputation — the data shows leadership
  rotating with console generations rather than staying with one company.
- The biggest global hits were tied to hardware bundling, which suggests platform partnerships
  can outweigh individual game marketing.
- Regional differences (not fully detailed above) are worth a deeper look for any
  publisher deciding which markets to localize for first.

## How to Reproduce

1. Load the sales dataset into MySQL and run `sql/video_game_sales_analysis.sql` for the
   cleaning and aggregation queries.
2. Open `notebook/video_game_sales_analysis.ipynb` in Jupyter to reproduce the cleaning and EDA.
3. Open the dashboard file in Power BI or Tableau to explore the interactive regional/genre views.

---
*Ademola Odusanya — [GitHub](https://github.com/Skinnyboss100) · [LinkedIn](https://linkedin.com/in/ademola-nicholas-odusanya)*
