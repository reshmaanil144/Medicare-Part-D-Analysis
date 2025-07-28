
# Project Background

Medicare Part D, established in 2006, is a federal prescription drug benefit program that serves over 48 million Americans with annual prescription drug spending exceeding $100 billion. Current spending patterns show extreme concentration, with just 10 drugs accounting for over 30% of total program costs.

Health insurance companies managing Medicare Part D plans possess vast amounts of prescription data but often lack the analytical frameworks to identify specific cost optimization opportunities. This project demonstrates a systematic data-driven methodology that insurance companies can apply to their internal prescription databases to uncover utilization management failures and quantify potential savings.

Using Medicare Part D public data as a representative sample of 1 million prescription records, this analysis showcases the analytical approach for detecting cost concentration patterns, price differential opportunities, and provider prescribing behaviors that drive unnecessary spending - insights that companies can replicate with their own proprietary data to achieve significant cost reductions.

Insights and recommendations are provided on the following key areas:

**Cost Concentration Crisis:**
Just 10 drugs consume 31% of ALL Medicare drug spending, with blood thinners, diabetes drugs, and biologics driving this unprecedented concentration. This creates a massive $543M savings opportunity by targeting these specific high-impact medications rather than broad cost-cutting measures.

**Price Differential Analysis:**
Shocking 64x-100x price gaps between equally effective drugs - Eliquis costs $870 vs. $13 for Warfarin, yet Eliquis has 4.5x more prescriptions. This reveals systematic failures where expensive drugs became default choices instead of last resorts, creating immediate intervention opportunities.

**Provider Targeting Strategy:**
Identification of specific prescribers driving disproportionate expensive drug usage enables precision interventions. Target doctors with extreme expensive-to-cheap prescribing ratios for enhanced oversight, step therapy enforcement, and education programs focused on the biggest cost drivers.

**Performance Tracking Framework:**
Three core metrics to monitor $543M savings progress: Generic Substitution Rate (improve blood thinner generic usage from current 18% toward category-appropriate benchmarks), Cost Concentration (reduce top-10 drug dominance from 31% to under 25%), and Provider Efficiency Scores. Monthly dashboard tracking ensures accountability and measures real progress toward cost reduction goals.

The SQL queries used to inspect and clean the data for this analysis can be found [here](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/data_cleaning.sql).

Targeted SQL queries regarding various business questions can be found [here](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/Business%20Question%20Analysis%20Queries).

KPI tracking and performance monitoring queries can be found [here](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/KPI%20Tracking%20Queries).

Outlier investigation methodology queries can be found [here](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/Outlier%20Investigation%20Queries).



# Data Structure & Initial Checks


The Medicare Part D prescriber database consists of one main table: **Medicare_PartD**, containing **1,000,000+** prescription records across all US states and territories with **22 fields** covering prescriber information, drug details, volume metrics, and cost data.

![Medicare Part D Database Schema](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/image.png)

Prior to beginning the analysis, comprehensive quality control checks were conducted to ensure data integrity and gain familiarity with the dataset structure. These checks validated data completeness, identified potential outliers, and confirmed the dataset's suitability for utilization management analysis.

**Key Data Components:**
- **Prescriber Information:** Provider demographics, specialties, and geographic distribution
- **Drug Details:** Generic names, brand names, and therapeutic classifications  
- **Volume Metrics:** Prescription counts and patient populations
- **Cost Data:** Total drug costs and per-prescription pricing

The SQL queries used to inspect and perform quality checks can be found [here](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/data_cleaning.sql).



# Executive Summary

### Overview of Findings

Medicare Part D spending is dangerously concentrated with just 10 drugs consuming over 30% of all costs, creating unprecedented intervention opportunities that most insurance companies are missing. The root cause isn't just high drug prices - it's systematic utilization management failures where expensive drugs (costing 64-100x more) have become default prescribing choices despite equally effective cheaper alternatives being readily available. Most critically, this presents a quantifiable $543 million annual savings opportunity through targeted step therapy and provider education programs that can be implemented within 12-18 months using specific prescriber and drug targeting strategies identified in this analysis.

**Cost Concentration Trends:**

- **Extreme market dominance revealed**: Top 5 drugs alone account for 21.9% of total program spending, with Eliquis representing 8.4% of ALL Medicare drug costs - a concentration level that indicates systemic market capture rather than isolated pricing issues.

- **Volume and price misalignment identified**: Eliquis dominates with 787,000 prescriptions at $870 each while clinically equivalent warfarin has only 174,000 prescriptions at $13 each, representing a complete market reversal where expensive options became default choices.

- **Systematic intervention opportunities confirmed**: New diabetes drugs have captured massive market share despite metformin's proven effectiveness and 100x lower cost, with Ozempic, Jardiance, and Trulicity collectively driving hundreds of millions in spending where $10 metformin could serve many patients equally well.

- **Biosimilar adoption failures documented**: Patent-expired biologics like Humira continue dominating with $1.4+ billion in spending despite available biosimilar alternatives, indicating weak adoption policies and significant immediate cost reduction opportunities.



# Insights Deep Dive
### Category 1:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 1]


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
