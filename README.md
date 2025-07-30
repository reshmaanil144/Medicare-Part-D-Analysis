
# Project Background

Medicare Part D serves over 48 million Americans with annual prescription drug spending exceeding $100 billion, yet just 10 drugs account for over 30% of total program costs. Health insurance companies managing these plans possess vast prescription data but often lack analytical frameworks to identify specific cost optimization opportunities.
This project demonstrates a systematic data-driven methodology using Medicare Part D public data as a representative sample of **1 million prescription records** to uncover utilization management failures and quantify potential savings. The analysis showcases approaches for detecting cost concentration patterns, price differentials, and prescribing behaviors that drive unnecessary spending - insights companies can replicate with proprietary data to achieve significant cost reductions.

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

 **Extreme market dominance revealed**: Top 5 drugs alone account for 21.9% of total program spending, with Eliquis representing 8.4% of ALL Medicare drug costs  a concentration level that indicates systemic market capture rather than isolated pricing issues.

  **Volume and price misalignment identified**: Eliquis dominates with 787,000 prescriptions at $870 each while clinically equivalent warfarin has only 174,000 prescriptions at $13 each, representing a complete market reversal where expensive options became default choices.

**$543 million savings opportunity quantified**: Conservative 30% patient switching analysis identified specific drug substitution targets - Eliquis→Warfarin ($202M), Ozempic→Metformin ($94M), Jardiance→Metformin ($93M) - providing actionable intervention roadmap with quantified financial impact.

**Provider-driven cost patterns identified**: Analysis revealed prescribers with extreme expensive-to-cheap drug ratios, including doctors prescribing 100+ Eliquis prescriptions but zero warfarin, enabling targeted intervention strategies for specific NPIs driving disproportionate costs.


# Insights Deep Dive

### 1. The 30.6% Cost Concentration Discovery

When we started analyzing Medicare Part D data, we expected some spending concentration - certain medications are naturally expensive. What we found was far more dramatic than anticipated.

- **Top 5 drugs**: 21.9% of ALL Medicare drug spending
- **Top 10 drugs**: 30.6% of total costs
- **Eliquis alone**: 8.4% of the entire drug budget

This concentration level immediately signals where intervention efforts should focus.

#### Three Distinct Patterns Emerged

* **Blood Thinners Dominating the Market**  
Eliquis and Xarelto have largely replaced warfarin for common conditions like atrial fibrillation. These newer blood thinners cost dramatically more but are being prescribed to hundreds of thousands of patients as the default choice.

* **The Diabetes Drug Revolution**  
Ozempic, Jardiance, and Trulicity represent a fundamental shift toward expensive diabetes treatments. While these drugs may offer clinical advantages, they're prescribed at massive volumes despite metformin's proven effectiveness at a fraction of the cost.

* **Patent Cliff Opportunities**  
Humira represents a unique $1.4+ billion opportunity. Unlike the other cost drivers, Humira's patent expiration creates direct biosimilar substitution possibilities with clinically equivalent but significantly cheaper alternatives now available. 


<img src="https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/Data%20Viz/Medicare%20Part%20D%20spending.png" width="800">

### 2. The Price-Volume Inversion Discovery

* **Extreme Price Gaps Identified.** Analysis revealed price differentials of 64x (Eliquis $870 vs Warfarin $13) and 100x (new diabetes drugs $1,000+ vs Metformin $10) between therapeutically equivalent medications, representing fundamental cost structure differences rather than modest price premiums.

* **Volume-Price Inversion Pattern.** Expensive drugs consistently capture higher prescription volumes than cheaper alternatives: Eliquis has 787,000 prescriptions while warfarin has only 174,000, despite the 64x cost difference, indicating systematic market reversal where expensive options became default choices.

* **High Price + High Volume = Maximum Impact Pattern.** Identified drugs like Eliquis that represent the worst-case scenario for cost control - premium pricing combined with market dominance, creating massive budget impact requiring aggressive intervention strategies.

* **Cost Control Priority Matrix Discovery.** Analysis revealed four distinct cost patterns requiring different intervention approaches: High Price/High Volume (step therapy priority), High Price/Low Volume (medical necessity review), Low Price/High Volume (maintain current), Low Price/Low Volume (monitor only), enabling systematic resource allocation.


<img src="https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/Data%20Viz/Cost%20control%20for%20four%20categories.png" width="800">

### 3. The $543M Savings Calculation Discovery

* **Conservative Methodology Validation.** Used only 30% patient switching assumptions (leaving 70% on expensive drugs) to account for clinical contraindications, treatment failures, and implementation challenges, yet still identified massive savings potential.

* **Sensitivity Analysis Robustness.** Testing revealed savings potential ranges from $362M (20% switch) to $905M (50% switch), demonstrating that even if switching assumptions are significantly wrong, savings remain enormous due to extreme price differentials.

* **Specific Drug Target Quantification.** Analysis identified exact savings opportunities: Eliquis→Warfarin ($202M), Ozempic→Metformin ($94M), Jardiance→Metformin ($93M), providing actionable intervention targets with quantified financial impact.

* **Mathematical Reality of Price Differentials.** Discovery that savings potential scales with price gaps rather than volume alone - because expensive drugs cost 64-100x more, even modest switching rates generate substantial financial impact regardless of conservative clinical assumptions.


<img src="https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/Data%20Viz/Projected%20annual%20savings.png" width="800">

### 4. Prescriber Behavior Pattern Analysis

* **Never Generic Prescriber Identification.** Query analysis revealed prescribers with extreme expensive-to-cheap drug ratios: providers prescribing >100 Eliquis prescriptions but zero warfarin, indicating complete abandonment of cost-effective alternatives within practice patterns.

* **Provider Efficiency Variations.** Investigation showed dramatic cost-per-patient differences among providers treating identical conditions, with systematic analysis enabling identification of specific NPIs for targeted utilization management interventions.

* **Ratio-Based Targeting Strategy.** Development of prescriber ratio analysis (>3:1 expensive-to-cheap for blood thinners, >2:1 for diabetes drugs) provides actionable targeting criteria for prior authorization requirements and provider education programs.

* **High-Volume Expensive-Only Pattern.** Discovery of prescribers writing large volumes of expensive drugs while completely avoiding cheaper alternatives suggests systematic utilization management bypass rather than patient-specific clinical decisions.


<img src="https://github.com/reshmaanil144/Medicare-Part-D-Analysis/blob/main/Data%20Viz/precriber%20analysis.png" width="800">

# KPIs & Recommendations:

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
