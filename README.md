# CSC 3220 — Predicting F1 Pit Stops

**Fall 2026 team data science project · Tennessee Technological University**

This public repository will hold our student-authored R code, reproduction instructions, figures, and project materials for [Kaggle Playground Series S6E5: Predicting F1 Pit Stops](https://www.kaggle.com/competitions/playground-series-s6e5).

> **Status:** The repository structure is initialized. Data inspection, model implementations, results, report text and slides have **not** been completed here. They must be produced by the student team under the CSC 3220 academic-integrity policy.

## Aim and evaluation

Explore the provided tabular racing data and evaluate models estimating whether a driver will make a pit stop on the next lap. The planned target is `PitNextLap`, and the Kaggle competition evaluates probability predictions using **ROC AUC**. Confirm column definitions and the submission schema from the downloaded official files.

Compare at least a simple baseline and a primary model on a common, held-out validation protocol. Do not use the competition's unlabeled test file as ground-truth evaluation data.

## Get started

1. Install **R**, **RStudio**, and **Git** on your computer.
2. Clone this repository:
   ```bash
   git clone https://github.com/bradyg7/csc3220-f1-pit-stops.git
   cd csc3220-f1-pit-stops
   ```
3. Open `csc3220-f1-pit-stops.Rproj` in RStudio.
4. Download `train.csv`, `test.csv`, and `sample_submission.csv` from the [official Kaggle data page](https://www.kaggle.com/competitions/playground-series-s6e5/data) into `data/raw/`. These files are intentionally ignored by Git.
5. Follow [the project checklist](PROJECT_PLAN.md) and agree on a common R version, package choices, random seed, and split protocol as a team.
6. **As students add scripts**, this README will be updated with exact package-installation commands and a from-scratch run order. No analysis run command is claimed yet.

## Repository structure

```text
.
├── README.md                         # Setup, purpose, eventual run order
├── CONTRIBUTING.md                   # Team / Git / integrity workflow
├── PROJECT_PLAN.md                   # Deliverables and responsibility checklist
├── csc3220-f1-pit-stops.Rproj        # RStudio project configuration
├── R/                                # Student-written R scripts and model code
├── data/
│   ├── README.md                     # Official dataset acquisition
│   ├── raw/                           # Downloaded official files (gitignored)
│   └── processed/                     # Student-derived intermediates (gitignored)
├── figures/                          # Student-created visualizations
├── results/                          # Student-produced metrics and tables
├── report/                           # Student-authored report source / PDF
└── slides/                           # Student-authored presentation
```

## Course deadlines

| Date (2026) | Deliverable |
| --- | --- |
| Nov 12 | Deliverable 1: Problem Statement and Data (Sections 1–2) |
| Nov 19 | Deliverable 2: Methods and Tools (revise Sections 1–2; add 3–4) |
| Nov 30 | Presentation slides |
| Dec 1 and/or Dec 3 | In-class presentation (assigned date) |
| Dec 3 | Final 8–12-page PDF report, Sections 1–7 |
| Dec 4 | Individual peer evaluation |

Nov 2 sign-up and Nov 3 approval dates have already passed; verify they were completed. For the full week-by-week plan, read [PROJECT_PLAN.md](PROJECT_PLAN.md).

## Course requirements and academic integrity

- **All data analysis must be written in R.** Use a **public** code repository and document how the work is rerun.
- Academic team: **4–5 students**. Each member must write at least one report section, contribute to Results, code/test/document at least one model, and present.
- Report: **one PDF per team**, 8–12 pages excluding Appendix, 11-point single-spaced; Appendix B section headings; captions and labeled axes.
- Slides: **8–12** total; **15 minutes including questions**.
- AI assistance is permitted for debugging, explaining R functions, and improving grammar in student-written text. **AI must not generate the team's analysis, report sections, slides, or interpretations.** Disclose any AI use in the Appendix.
- Cite any outside code/idea, including in source-code comments where used. Do not copy published solutions.
- The original Kaggle competition has ended; focus on reproducible local validation. Any available late leaderboard submission is optional.

## Project links

- [Kaggle competition](https://www.kaggle.com/competitions/playground-series-s6e5)
- [Competition data](https://www.kaggle.com/competitions/playground-series-s6e5/data)
- [Detailed coordination plan in Notion (may require access)](https://app.notion.com/p/40f67a3c8404816fb844e8e320c8b3d9)

## Team

Team name, student names, GitHub usernames, and model owners: to be entered by the team. One designated representative submits team work to Canvas.
