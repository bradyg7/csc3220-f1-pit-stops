# CSC 3220 — EDA learning workbook
# Purpose: a self-guided R tutorial covering the six Deliverable 1 EDA checkpoints.
#
# ACADEMIC INTEGRITY: This is educational scaffolding, NOT completed analysis.
# Your course permits AI help with learning R and debugging, but does not permit
# AI to author your analysis, report, or interpretation. You must choose,
# implement, explain, and defend the final charts/analysis yourself.
#
# How to use:
#   1. Open the repository .Rproj in RStudio.
#   2. Place Kaggle CSVs under data/raw/ (ignored by Git).
#   3. Run each section interactively; inspect its console results.
#   4. Complete the STUDENT TODO prompts and R/EDA_DECISIONS_WORKSHEET.md.
#   5. Re-run your own final R scripts and document their actual order in README.
#
# Only base R is needed for the examples below.

# ===== GATE 1: DATASET INVENTORY AND TARGET DISTRIBUTION ===================
required_files <- c(
  "data/raw/train.csv",
  "data/raw/test.csv",
  "data/raw/sample_submission.csv"
)
stopifnot(all(file.exists(required_files)))

train <- read.csv(required_files[1])
test <- read.csv(required_files[2])
sample_submission <- read.csv(required_files[3])

# These commands were previously practiced in this chat.
dim(train)
dim(test)
dim(sample_submission)
names(train)
str(train)
table(train$PitNextLap, useNA = "ifany")
prop.table(table(train$PitNextLap))
colSums(is.na(train))
anyDuplicated(train$id)
identical(test$id, sample_submission$id)
identical(setdiff(names(train), "PitNextLap"), names(test))

# STUDENT TODO:
# - Record file sizes and row/column counts in your own data dictionary.
# - Explain the target distribution using your own words.
# - Decide what a simple always-zero prediction would mean and why AUC is useful.
# - Identify the meaning of each feature from trustworthy sources.

# ===== GATE 2: EXTREME VALUES AND DATA QUALITY =============================
# Descriptive statistics show candidates for investigation, not automatically
# invalid records. Never drop values merely because they seem extreme.

summary(train)
summary(train$LapTime..s.)

# Quantiles reveal the range covering most of the observed laps.
quantile(
  train$LapTime..s.,
  probs = c(0, 0.01, 0.25, 0.50, 0.75, 0.99, 1)
)

# Learning example: filter unusually long laps without modifying raw data.
# 300 seconds is just a demonstration threshold, NOT a cleaning rule.
long_laps <- train[train$LapTime..s. > 300, ]
nrow(long_laps)
head(long_laps[, c("id", "Race", "Year", "LapNumber", "LapTime..s.")])

# STUDENT TODO:
# - Examine the definitions and origins of unusually large lap times/deltas.
# - Decide whether an actual cleaning rule is justified, and explain why.
# - Repeat a suitable check for variables YOU choose, such as
#   LapTime_Delta, Cumulative_Degradation or TyreLife.
# - Do not alter data/raw/*.csv.

# ===== GATE 3: INFORMATIVE EXPLORATORY PLOTS ===============================
# These two plot examples teach base R syntax. The assignment requires students
# to choose and create their own meaningful charts with captions and labels.

barplot(
  table(train$PitNextLap),
  main = "Training target counts — exploratory example",
  xlab = "PitNextLap class (0 or 1)",
  ylab = "Number of observations"
)

hist(
  train$TyreLife,
  main = "Tire life distribution — exploratory example",
  xlab = "TyreLife",
  ylab = "Number of observations"
)

# STUDENT TODO:
# - Decide which 2–4 figures make the strongest evidence for Section 2.
# - Choose your own axes, breaks, comparisons and figure captions.
# - Create the remaining comparison plots in student-authored R code.
# - Explain what each plot can and cannot establish.

# ===== GATE 4: EXPLORE 2–3 TARGET-RELATED HYPOTHESES ========================
# This repeats the cut/tapply/count workflow you already practiced.
# A binary group's mean equals that group's observed share of target=1.
# This is descriptive association, not causation.

train$RaceStage <- cut(
  train$RaceProgress,
  breaks = c(0, 0.25, 0.50, 0.75, 1),
  labels = c("Early", "Mid-Early", "Mid-Late", "Late"),
  include.lowest = TRUE
)
table(train$RaceStage)
tapply(train$PitNextLap, train$RaceStage, mean)

train$TyreAgeGroup <- cut(
  train$TyreLife,
  breaks = c(0, 5, 10, 20, 40, Inf),
  labels = c("1-5", "6-10", "11-20", "21-40", "41+"),
  include.lowest = TRUE
)
table(train$TyreAgeGroup)
tapply(train$PitNextLap, train$TyreAgeGroup, mean)

# Learning example: compare two groupings without confusing rate with count.
tapply(
  train$PitNextLap,
  list(train$Compound, train$RaceStage),
  mean
)
table(train$Compound, train$RaceStage)

# STUDENT TODO:
# - Pick two or three hypotheses, including at least one of YOUR own.
# - Write a plot for each comparison yourself (rather than copying one).
# - Write the observed group sizes alongside group rates.
# - Judge each hypothesis based only on the observed data, noting uncertainty.
# - Consider the small sample sizes for certain compound-stage combinations.

# ===== GATE 5: FEATURE MEANING AND POSSIBLE TARGET LEAKAGE ==================
# A column can be numeric and non-missing yet be invalid as a predictor if it
# was calculated with information only known AFTER the predicted next lap.
# The CSV alone cannot establish exactly when every feature is available.

names(train)
head(train[, c(
  "Year", "Race", "Driver", "LapNumber", "Stint", "TyreLife",
  "PitStop", "LapTime_Delta", "Cumulative_Degradation",
  "RaceProgress", "PitNextLap"
)])

# STUDENT TODO:
# - Consult the Kaggle feature descriptions / domain sources.
# - For EACH candidate predictor, answer: known at end of current lap?
# - Especially investigate PitStop, LapTime_Delta and
#   Cumulative_Degradation. Do not automatically drop them.
# - Consider race/driver/time dependence before choosing a train/holdout split.
# - Do not use id as a shortcut for identifying labels.

# ===== GATE 6: RECORD STUDENT DECISIONS AND STOP EXPLORING ===================
cat("\nNext: complete R/EDA_DECISIONS_WORKSHEET.md in your own words.\n")
cat("Stop broad EDA when each of the six gates has sufficient evidence.\n")

# STUDENT TODO:
# - For every cleaning/feature/plot decision, record what you did and why.
# - Record unanswered questions and planned validation considerations.
# - Keep analysis code, interpretation, captions and report writing student-owned.
