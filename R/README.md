# R analysis scripts — student-owned

No analysis or model implementations have been added by the assistant. The instructor requires the team to write and explain its own analysis.

Suggested filenames and responsibilities, to implement **by students** once data and roles are verified:

1. `00_data_audit.R` — record actual column names, dimensions, types, missingness and target balance.
2. `01_eda.R` — produce student-selected exploratory figures and document observations.
3. `02_validation_split.R` — document a common non-leaky validation protocol and chosen seed.
4. `models/logistic_baseline.R` — Member A's tested baseline model.
5. `models/decision_tree.R` — Member B's tested decision tree.
6. `models/random_forest.R` — Member C's tested random forest.
7. `models/gradient_boosting.R` — Member D's tested boosting model.
8. `models/regularized_logistic.R` — optional Member E model.
9. `03_model_comparison.R` — combine the team's saved results without retuning on final holdout.
10. `04_optional_submission.R` — optional CSV predictions with correct row IDs and probabilities.

Adapt names as the team sees fit. Every individual must code, test, and document a model; each must also contribute to the written Results section. Do not commit a copied Kaggle solution.

## Reproducibility checklist (fill in as work progresses)

- R version: TODO (record from `R.version.string`).
- Package versions: TODO (record with `sessionInfo()` or a student-managed `renv.lock`).
- Random seed: TODO (choose and record before splitting).
- Split scheme: TODO (document after inspecting race/lap/group fields).
- Command order: TODO (list actual existing scripts, not aspirational commands).
- Data location: `data/raw/` (download separately, ignored by Git).

## Deliverable 1 learning workflow (available now)

The repository includes a **guided R learning workbook** at [`R/00_eda_learning_workbook.R`](00_eda_learning_workbook.R) and a student-completed [EDA decisions worksheet](EDA_DECISIONS_WORKSHEET.md). These cover six gates: inventory, anomaly inspection, plots, hypothesis exploration, feature leakage, and decision logging. They are not completed deliverables or model code.

From the repository root in RStudio, after downloading the official Kaggle files into `data/raw/`, run the tutorial interactively, one section at a time, or source all sections:

```r
source("R/00_eda_learning_workbook.R", echo = TRUE)
```

Base R is sufficient for the included demonstrations. Complete the marked `STUDENT TODO` sections with your own code and the worksheet in your own words. Then turn your own supported findings into the required student-authored Section 2. Do **not** submit the workbook or worksheet alone as the report.

**Current status:** project scaffold and an instructional R workbook exist; student-authored EDA findings, final selected plots, model code, and results remain to be completed.
