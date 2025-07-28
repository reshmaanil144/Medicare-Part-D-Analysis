
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

### 1. The 30.6% Cost Concentration Discovery

When we started analyzing Medicare Part D data, we expected some spending concentration - certain medications are naturally expensive. What we found was far more dramatic than anticipated.

Using systematic SQL analysis, we ranked all drugs by total spending and calculated each drug's share of the Medicare budget. The results were staggering:

- **Top 5 drugs**: 21.9% of ALL Medicare drug spending
- **Top 10 drugs**: 30.6% of total costs
- **Eliquis alone**: 8.4% of the entire drug budget

This concentration level immediately signals where intervention efforts should focus.

#### Three Distinct Patterns Emerged

**Blood Thinners Dominating the Market**  
Eliquis and Xarelto have largely replaced warfarin for common conditions like atrial fibrillation. These newer blood thinners cost dramatically more but are being prescribed to hundreds of thousands of patients as the default choice.

**The Diabetes Drug Revolution**  
Ozempic, Jardiance, and Trulicity represent a fundamental shift toward expensive diabetes treatments. While these drugs may offer clinical advantages, they're prescribed at massive volumes despite metformin's proven effectiveness at a fraction of the cost.

**Patent Cliff Opportunities**  
Humira represents a unique $1.4+ billion opportunity. Unlike the other cost drivers, Humira's patent expiration creates direct biosimilar substitution possibilities with clinically equivalent but significantly cheaper alternatives now available. 

### 2. The 64-100x Price Differential Investigation

The critical question we needed to answer: Are these drugs expensive because they're the only option, or are cheaper alternatives not being used? We systematically searched for therapeutic alternatives and analyzed their usage patterns. What we found fundamentally changed our understanding.

#### The Price Shock

**Blood Thinners - Two Different Worlds**
- **Eliquis**: $870 per prescription × 787,000 prescriptions = $684 million
- **Warfarin**: $13 per prescription × 174,000 prescriptions = $2.4 million
- **Reality**: Eliquis costs 64 times more per prescription

**Diabetes Drugs - The $1,000+ Problem**
- **Ozempic**: $1,333 per prescription
- **Metformin**: $10 per prescription
- **Gap**: 100 times more expensive for the same therapeutic outcome

#### The Volume Problem

Here's what's truly concerning: Eliquis has 4.5 times more prescriptions than warfarin but costs 285 times more total. This suggests expensive drugs aren't reserved for special cases - they've become the default choice. The critical question is are all 787,000 Eliquis patients truly unable to use the $13 warfarin alternative? Or are we witnessing a system-wide shift driven by factors beyond medical necessity?


### 3. The $543M Savings Calculation

Calculating realistic savings required careful consideration of clinical constraints and implementation reality.

#### Conservative Approach

We assumed only **30% of patients** could safely switch to cheaper alternatives, accounting for:

- Patients who previously failed on generic options
- Medical contraindications to cheaper drugs
- Complex conditions requiring specific formulations
- Implementation challenges and provider resistance

#### Sensitivity Testing

We tested multiple scenarios:

- **Conservative (20% switch)**: $362 million savings
- **Base case (30% switch)**: $543 million savings
- **Aggressive (50% switch)**: $905 million savings

Even our most conservative estimate yields over $350 million annually - a massive opportunity by any standard.The savings potential remains enormous because the price differentials are so extreme, even if our switching assumptions are significantly wrong.

### 4. Utilization Management System Failures

The patterns we discovered don't happen by accident. They represent systematic failures in cost control systems designed to prevent inappropriate spending.

#### Step Therapy Gaps

**Evidence**: 787,000 people on $870 Eliquis while only 174,000 use $13 warfarin.

In effective step therapy systems, patients try cheaper options first and only move to expensive drugs when necessary. Current numbers suggest either:

- Step therapy requirements don't exist for these drugs
- Requirements are too easy to bypass
- Clinical criteria are so broad that most patients qualify for expensive options

#### Prior Authorization Failures & Generic Promotion Breakdown

Massive volumes of expensive drugs indicate prior authorization systems have become rubber-stamp approvals rather than meaningful clinical reviews. Continued brand drug dominance despite available generics reveals fundamental failures in promotion policies. This is especially concerning for diabetes medications where metformin has decades of proven effectiveness at dramatically lower costs.

**The Pattern**: Expensive drugs aren't being used as last resorts - they've become first-line choices, representing a complete reversal of cost-effective prescribing principles.

# Insights Deep Dive: 2nd option

### 1. The 30.6% Cost Concentration Discovery

Our Medicare Part D analysis revealed unprecedented spending concentration that defies typical market distribution patterns. Just 10 drugs consume 30.6% of all program costs, with Eliquis alone representing 8.4% of the entire Medicare drug budget.

Three distinct cost drivers emerged: blood thinners like Eliquis have replaced cheaper warfarin as the default choice, new diabetes drugs dominate despite metformin's proven effectiveness at 1/100th the cost, and patent-expired biologics like Humira continue generating $1.4+ billion despite available biosimilars.

**The core issue**: Expensive drugs aren't being used as last resorts - they've become first-line choices where cheaper, equally effective alternatives exist.


### 2. The 64-100x Price Differential Discovery

* **Extreme Price Gaps Identified.** Analysis revealed price differentials of 64x (Eliquis $870 vs Warfarin $13) and 100x (new diabetes drugs $1,000+ vs Metformin $10) between therapeutically equivalent medications, representing fundamental cost structure differences rather than modest price premiums.

* **Volume-Price Inversion Pattern.** Expensive drugs consistently capture higher prescription volumes than cheaper alternatives: Eliquis has 787,000 prescriptions while warfarin has only 174,000, despite the 64x cost difference, indicating systematic market reversal.

* **Clinical Necessity vs Market Capture.** Investigation revealed that 787,000 Eliquis patients compared to 174,000 warfarin users suggests expensive drugs aren't reserved for treatment failures or contraindications - they've become default prescribing choices.

* **Total Cost Impact Amplification.** The combination of high price and high volume creates maximum budget impact: Eliquis generates $684 million while warfarin costs only $2.4 million, representing a 285x total cost difference from just 4.5x volume difference.

[Price Differential Comparison Chart]



### 3. Volume vs. Price Analysis Framework

* **High Price + High Volume = Maximum Impact Pattern.** Identified drugs like Eliquis that represent the worst-case scenario for cost control - premium pricing combined with market dominance, creating massive budget impact requiring aggressive intervention strategies.

* **Utilization Management Strategy Matrix.** Analysis revealed four distinct cost patterns requiring different intervention approaches: High/High (step therapy priority), High/Low (medical necessity review), Low/High (maintain current), Low/Low (monitor only).

* **Cost Control Priority Framework.** Systematic categorization shows that high-price, high-volume combinations like blood thinners and diabetes drugs should receive primary utilization management focus, while rare disease drugs require different oversight approaches.

* **Budget Impact vs Cost Driver Distinction.** Current spending patterns (cost drivers) differ from intervention opportunities (budget impact) - some high-spend drugs have limited savings potential while others offer massive reduction possibilities through therapeutic substitution.

[Volume vs Price Impact Matrix]



### 4. Prescriber Behavior Pattern Analysis

* **Never Generic Prescriber Identification.** Query analysis revealed prescribers with extreme expensive-to-cheap drug ratios: providers prescribing >100 Eliquis prescriptions but zero warfarin, indicating complete abandonment of cost-effective alternatives within practice patterns.

* **Provider Efficiency Variations.** Investigation showed dramatic cost-per-patient differences among providers treating identical conditions, with systematic analysis enabling identification of specific NPIs for targeted utilization management interventions.

* **Ratio-Based Targeting Strategy.** Development of prescriber ratio analysis (>3:1 expensive-to-cheap for blood thinners, >2:1 for diabetes drugs) provides actionable targeting criteria for prior authorization requirements and provider education programs.

* **High-Volume Expensive-Only Pattern.** Discovery of prescribers writing large volumes of expensive drugs while completely avoiding cheaper alternatives suggests systematic utilization management bypass rather than patient-specific clinical decisions.

[Prescriber Efficiency Comparison Chart]
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
