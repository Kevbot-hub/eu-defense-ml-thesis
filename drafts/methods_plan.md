# Methods Plan: EU Defense Integration & U.S. Foreign Policy

_Last updated: 2025-05-24_

> **Note:** This methods plan is a living document and will be updated as data collection and analysis progress.

---

## 1. Research Question(s)

- **Primary:** How do shifts in U.S. foreign policy affect EU defense integration, and how might this play out under future scenarios?

---

## 2. Key Variables

### Dependent Variable(s): EU Defense Integration

- **Defense Cohesion Index** (annual, by EU member state, 2009–2025)
    - Composite index (to be constructed) based on:
        - Number of active PESCO projects
        - EU defense spending (% GDP)
        - Participation in joint EU missions/operations
    - *Formula and weighting to be finalized after initial data exploration.*

### Independent Variable(s): U.S. Policy Events

- U.S. administration changes (dummy variables: e.g. Obama → Trump → Biden → Trump)
- Major U.S. policy speeches (e.g. NATO summits, State of the Union)
- U.S. defense spending/commitment to NATO (annual figures)
- U.S. troop levels in Europe (annual)
- Major legislative acts on defense/foreign policy

### Control Variables (Covariates)

- EU member state GDP (World Bank, Eurostat)
- External threat indicators (e.g. number of Russian incursions, terrorist attacks per year)
- EU public opinion on defense integration (Eurobarometer)

---

## 3. Data Sources

- **EU Defense Integration:**
    - European Defence Agency (EDA): [PESCO projects](https://www.eda.europa.eu/what-we-do/our-current-priorities/pesco/pesco-projects)
    - EDA: [Defense spending data](https://eda.europa.eu/publications-and-data/defence-data)
    - EEAS: [EU missions & operations](https://eeas.europa.eu/topics/military-and-civilian-missions-and-operations/430/military-and-civilian-missions-and-operations_en)
- **U.S. Policy Events:**
    - White House archives: [Briefings & Statements](https://www.whitehouse.gov/briefing-room/statements-releases/)
    - NATO: [Annual Reports](https://www.nato.int/cps/en/natohq/topics_127894.htm)
    - U.S. Congressional records: [Congress.gov](https://www.congress.gov/)
- **Control Variables:**
    - World Bank: [GDP data](https://data.worldbank.org/)
    - Eurostat: [Security indicators](https://ec.europa.eu/eurostat/web/products-datasets)
    - Eurobarometer: [Public opinion surveys](https://europa.eu/eurobarometer/surveys/detail/2043)
- **Licensing:** Note if any dataset is restricted or requires permission.

---

## 4. Planned Methods

### A. Causal Analysis (R)

- **Panel data regression** (country-year, fixed effects) to estimate impact of U.S. policy shifts on EU defense integration.
- Possible extensions: Difference-in-Differences (DiD), event study analysis.
- **Justification:** Panel data allows control for both country and time fixed effects, improving causal inference.

- **Example regression formula:**

    ```
    defense_cohesion_it = β0 + β1*us_policy_event_t + β2*gdp_it + β3*threat_it + α_i + λ_t + ε_it
    ```
    *where i = country, t = year; α = country fixed effect, λ = year fixed effect.*

- **Software:** R (`plm`, `tidyverse`, etc.)

### B. Machine Learning & NLP (Python, later phase)

- **Topic modeling** on policy documents (EU, U.S., NATO) to identify shifts in strategic discourse.
- **Predictive modeling:** Forecast defense cohesion index under alternative U.S. policy and external threat scenarios.
- **Tools:** Python (`scikit-learn`, `pandas`, `transformers`)

### C. Strategic Foresight / Scenario Simulation

- Develop 3–4 plausible U.S. policy scenarios (e.g. renewed Atlanticism, isolationism, multipolarity).
- Use ML models to simulate/visualize possible EU defense trajectories for each scenario.
- Combine quantitative forecasts with qualitative scenario narratives.

---

## 5. Immediate Next Steps

1. Gather and download initial raw data for core variables.
2. Draft a chronological dataset of major U.S. policy events (2009–2025).
3. Collect annual data on PESCO, defense spending, joint missions for EU member states.
4. Begin basic data cleaning in R and save cleaned datasets to `/data/processed/`.
5. Run initial panel regression with available/placeholder data.
6. Document any data limitations, gaps, or sources requiring permission.

---

## 6. Notes & To-Do

- Define and justify the “Defense Cohesion Index” formula after initial data exploration.
- Keep an updated research log in `/drafts/research_log.md`.
- Update this plan as data and analysis progress.
