# Data acquisition (team action required)

Source: [Kaggle Playground Series S6E5 — Predicting F1 Pit Stops](https://www.kaggle.com/competitions/playground-series-s6e5/data)

1. Each teammate obtains the official competition files according to Kaggle's access and licensing terms.
2. Save `train.csv`, `test.csv`, and `sample_submission.csv` inside `data/raw/`.
3. Keep these raw files **unchanged** and **out of Git** (the `.gitignore` protects this folder).
4. Store any student-produced intermediate data in `data/processed/` (also ignored).
5. In the student-authored data audit, record exact sizes, columns, classes, missingness, duplicates and data provenance.
6. Verify the target and sample submission schema against the actual downloaded files before assuming field names.

Do not place Kaggle credentials, API keys, or private datasets in this repository.

## Current student setup and public redistribution

The team has confirmed that the three official files are downloaded and readable **locally** in their Windows RStudio project. The public GitHub repository does **not** contain copies of the original CSV files.

The [competition's Data page](https://www.kaggle.com/competitions/playground-series-s6e5/data) lists the data under CC BY 4.0. However, before publicly redistributing the complete files, the team should verify that the [competition rules](https://www.kaggle.com/competitions/playground-series-s6e5/rules) also permit that form of sharing. To avoid unnecessary redistribution and large Git history, **keep the existing .gitignore** and have each member download their own official copy.

The files supplied for the current work session were roughly 52 MB, 22 MB, and 1.7 MB (training, test, sample submission). An original source link and acquisition instructions are sufficient for reproducibility at this stage. No Kaggle data has been uploaded to GitHub.
