
# Project Background
Medicare Part D, established in 2006, is a federal prescription drug benefit program that serves over 48 million Americans with annual prescription drug spending exceeding $100 billion. Current spending patterns show extreme concentration, with just 10 drugs accounting for over 30% of total program costs.

The program has accumulated comprehensive prescriber-level data covering over 1 million prescription records, including drug costs, prescribing patterns, and provider behavior that reveals significant opportunities for cost optimization. This project systematically analyzes this data to identify **specific, actionable interventions** that could save billions through improved utilization management.

Insights and recommendations are provided on the following key areas:

**Cost Concentration Crisis:**
Just 10 drugs consume 31% of ALL Medicare drug spending, with blood thinners, diabetes drugs, and biologics driving this unprecedented concentration. This creates a massive $543M savings opportunity by targeting these specific high-impact medications rather than broad cost-cutting measures.

**Price Differential Analysis:**
Shocking 64x-100x price gaps between equally effective drugs - Eliquis costs $870 vs. $13 for Warfarin, yet Eliquis has 4.5x more prescriptions. This reveals systematic failures where expensive drugs became default choices instead of last resorts, creating immediate intervention opportunities.

**Provider Targeting Strategy:**
Identification of specific prescribers driving disproportionate expensive drug usage enables precision interventions. Target doctors with extreme expensive-to-cheap prescribing ratios for enhanced oversight, step therapy enforcement, and education programs focused on the biggest cost drivers.

**Performance Tracking Framework:**
Three core metrics to monitor $543M savings progress: Generic Substitution Rate (improve blood thinner generic usage from current 18% toward category-appropriate benchmarks), Cost Concentration (reduce top-10 drug dominance from 31% to under 25%), and Provider Efficiency Scores. Monthly dashboard tracking ensures accountability and measures real progress toward cost reduction goals.

The SQL queries used to inspect and clean the data for this analysis can be found here [link](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/data_cleaning.sql).

Targeted SQL queries regarding various business questions can be found here [link](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/Business%20Question%20Analysis%20Queries).

KPI tracking and performance monitoring queries can be found here [link](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/KPI%20Tracking%20Queries).

Outlier investigation methodology queries can be found here [link](https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/sql/Outlier%20Investigation%20Queries).



# Data Structure & Initial Checks

The companies main database structure as seen below consists of four tables: table1, table2, table3, table4, with a total row count of X records. A description of each table is as follows:
- **Table 2:**
- **Table 3:**
- **Table 4:**
- **Table 5:**

[Entity Relationship Diagram here]



# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

[Visualization, including a graph of overall trends or snapshot of a dashboard]



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
