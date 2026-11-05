# Project schedule and work plan

This file tracks the **repository implementation workflow**. The detailed private coordination plan is in [Notion](https://app.notion.com/p/40f67a3c8404816fb844e8e320c8b3d9). Academic deadlines below come from *CSC 3220 Final Team Project Instructions — Fall 2026*; intermediate dates are **team planning suggestions**, not instructor deadlines.

## Working arrangement

**November 5, 2026:** Use one Windows computer for initial dataset acquisition, local RStudio setup, and first student-authored data audit. Teammate GitHub invitations and handoffs are deferred until teammates are ready. Keep all durable code and project instructions in this repository so others can reproduce the work later. **Dataset acquisition and actual audit have not yet been confirmed complete.**

## Course deadlines

| Date, 2026 | Required submission |
| --- | --- |
| Nov 2 | Team/project sign-up (past; verify complete) |
| Nov 3 | Instructor approval (past; verify complete) |
| **Nov 12** | Deliverable 1: Sections 1–2 of report |
| **Nov 19** | Deliverable 2: updated Sections 1–2 and Sections 3–4 |
| **Nov 30** | Presentation slides |
| Dec 1 or Dec 3 | Presentation, as assigned |
| **Dec 3** | Final report |
| **Dec 4** | Individual peer evaluations |

## Phase 1: Setup and data inspection (suggested Nov 5–11)

- [ ] Confirm instructor approval, team name, membership, and submission representative.
- [x] Create public repository and documentation scaffold.
- [ ] Add each teammate as a collaborator after confirming GitHub usernames.
- [ ] Every teammate sets up R and RStudio.
- [ ] Each teammate obtains `train.csv`, `test.csv`, `sample_submission.csv` and keeps them local.
- [ ] Students inspect real columns, counts, types, missingness, duplicates, label balance and possible leakage.
- [ ] Team chooses defensible validation and records its rationale.
- [ ] Students produce EDA plots and draft Sections 1–2.
- [ ] Submit Deliverable 1 by **Nov 12**.

## Phase 2: Methods and prototypes (suggested Nov 13–18)

- [ ] Document a common training/validation protocol and random seed.
- [ ] Assign each person a unique model and document the assignment.
- [ ] Each student codes and tests the first version of their model in R.
- [ ] Students draft Methods and Tools sections; update earlier sections from instructor feedback.
- [ ] Submit Deliverable 2 by **Nov 19**.

## Phase 3: Comparison and results (suggested Nov 20–24)

- [ ] Compare a simple baseline and candidate models using a held-out ROC AUC score.
- [ ] Document individual features, preprocessing, tuning, measurements, and failures.
- [ ] Check whether the strategy leaks race-level or future-lap information.
- [ ] Students create comparison figures/tables and each contributes to Results.
- [ ] Record R version, package versions, random seed and exact run order.

## Phase 4: Report, slides, and final submission (suggested Nov 25–Dec 4)

- [ ] Students write Sections 5–7 and complete team review.
- [ ] Report PDF has exactly the required seven headings, 8–12 pages excluding Appendix, 11-point single-spaced.
- [ ] Every figure is captioned and every chart axis labeled.
- [ ] Include repo URL, Kaggle source URL, team-approved contribution table, citations, and AI-use disclosure.
- [ ] Students create 8–12 slides; all members present; rehearse within 15 minutes including questions.
- [ ] Submit slides by **Nov 30**.
- [ ] Present Dec 1 or Dec 3 as assigned.
- [ ] Submit final report by **Dec 3**.
- [ ] Each member submits peer evaluation by **Dec 4**.

## Model allocation proposal (not yet assigned)

| Member placeholder | Potential model | Report / Results work |
| --- | --- | --- |
| A | Logistic regression (baseline) | Section 1 + baseline in Results |
| B | Decision tree | Section 2 + EDA contribution to Results |
| C | Random forest | Section 3 + model comparisons in Results |
| D | Gradient boosting | Section 4 + evaluation/reproducibility in Results |
| E, if 5 members | Regularized logistic regression | Section 6 + Results |

Every member still needs to write at least one section, contribute to Results, and deliver model code, tests, and documentation. If there are four members, distribute Section 6 and Appendix responsibilities across the four.

## Project-specific guardrails

- The course requires all analysis in **R** and a public repository with reproducibility instructions.
- The Kaggle competition's original deadline has passed. Independent local evaluation is mandatory for this project; leaderboard use is optional.
- Predictions for an optional `sample_submission.csv` workflow should be probabilities, with IDs aligned to the competition format.
- Do **not** use the unlabeled Kaggle test file to measure model accuracy.
- Keep instructor grading rules above unofficial online notebooks or tooling shortcuts.
