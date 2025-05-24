# Methods Plan

## Title  
**Forecasting European Defense Integration: Combining Econometric Analysis and Machine Learning to Assess the Impact of U.S. Foreign Policy Shifts and Enhance Strategic Foresight (2009–2025)**

---

## Core Approach

Blend traditional econometrics (R) and machine learning/predictive modeling (Python) to:

- **Analyze** how past U.S. policy shifts have impacted EU defense cohesion (causal analysis in R).
- **Forecast** future EU defense policy trajectories under different U.S. strategic scenarios (ML + scenario simulation in Python).
- **Strategic foresight:** Simulate and stress-test plausible futures, providing actionable insights for policymakers.

---

## Suggested Structure

### A. Historical Causal Analysis (R)

- **Purpose:** Quantify the impact of major U.S. foreign policy events (administration changes, NATO policies, troop deployments) on EU defense integration/cohesion.
- **Methods:**  
  - Panel data regressions (fixed effects, random effects, diff-in-diff, time series models)
  - Transparent, classic approach for social science rigor.
- **Tools:** R (`plm`, `lme4`)

---

### B. Machine Learning & Predictive Modeling (Python)

- **Text/NLP:**  
  - Analyze EU and U.S. policy documents using topic modeling, sentiment analysis, and pattern extraction (e.g., `scikit-learn`, `transformers`).
  - Detect shifts in strategic discourse around key events.
- **Predictive Modeling:**  
  - Build models to forecast future EU defense cohesion based on scenario variables, economic data, threat indicators, and U.S. policy signals.
  - Validate predictive power with out-of-sample tests and cross-validation.
- **Tools:** Python (`scikit-learn`, `pandas`, `transformers`, `matplotlib`)

---

### C. Strategic Foresight Simulation

- **Scenario Planning:**  
  - Develop plausible future scenarios (“U.S. Isolationism Returns”, “Transatlantic Renaissance”, “Multipolar Disorder”, etc.).
  - Use predictive models to simulate EU defense outcomes under each scenario.
  - Combine quantitative forecasts with qualitative foresight (Delphi interviews, expert surveys).
- **Visualization:**  
  - Visual dashboards/charts for projected EU defense trajectories.
- **Tools:** Python (`matplotlib`, `seaborn`, dashboards if ambitious), scenario workshop/interviews (qualitative).

---

## Key Variables & Data Sources

| Variable Type | Data Needed | Main Sources |
|---------------|-------------|--------------|
| Dependent | EU Defense Cohesion Index (PESCO, defense spending, joint missions) | [PESCO](https://www.pesco.europa.eu/), [EDA](https://eda.europa.eu/publications-and-data/defence-data), [EEAS Missions](https://www.eeas.europa.eu/eeas/missions-and-operations_en) |
| Independent | U.S. Policy Events (dummies: admin change, major speeches, defense strategy, etc.) | [White House Archives](https://www.whitehouse.gov/), [NSS/NDS Docs](https://history.state.gov/milestones/1989-1992/national-security-strategy) |
| Controls | GDP, external threat index, public opinion | [World Bank](https://data.worldbank.org/), [Eurostat](https://ec.europa.eu/eurostat/), [Eurobarometer](https://europa.eu/eurobarometer/surveys/browse/all/public-opinion-on-eu-policies_en), [SIPRI](https://www.sipri.org/databases/milex) |

---

## Example Workflow

1. **Data Collection & Cleaning**
    - Gather raw data into `/data/raw/` (with subfolders for indicators, events, controls).
    - Document sources in `/docs/data_sources.md`.

2. **Causal Analysis (R)**
    - Operationalize variables and run panel data regressions.
    - Estimate causal impact of U.S. events on EU cohesion.

3. **Text & Predictive Modeling (Python)**
    - Extract and process key policy documents.
    - Run topic modeling/NLP to detect shifts in EU/US defense discourse.
    - Train ML models to predict cohesion index using historical data.

4. **Strategic Foresight & Scenario Simulation**
    - Draft future scenarios.
    - Use predictive model to simulate outcomes for each scenario.
    - Visualize and summarize implications.

5. **Integration & Policy Implications**
    - Synthesize findings from both approaches.
    - Provide recommendations for EU policymakers.

---

## Immediate To-Dos

- [ ] Collect and clean all relevant datasets; save to `/data/raw/`
- [ ] Build event spreadsheet of U.S. policy shifts (2009–2025)
- [ ] Draft operational definitions for each variable
- [ ] Write an R script for initial panel regressions
- [ ] Identify key documents for text/NLP analysis
- [ ] Outline 2–3 plausible future scenarios

---

## Notes

**“Wow Factor” Ideas:**  
- Causal estimates of Trump-era shocks on EU defense integration (diff-in-diff/synthetic controls in R)
- Topic modeling: Track defense rhetoric shifts before/after key U.S. events (Python)
- ML forecast tool: Input hypothetical U.S. policies to simulate future EU defense cohesion
- Interactive or visually clear scenario dashboards

**Skills Demo:**  
- Show expertise in R (econometrics) and Python (ML/NLP/prediction)

---

