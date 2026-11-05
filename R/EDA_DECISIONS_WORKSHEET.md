# Deliverable 1: EDA decisions worksheet (student-owned)

**This is a blank research log, not report text.** After running your own R code, fill every section with your own results, decisions, and explanations. Follow the instructor's Appendix B; do not submit this worksheet as if it were a completed report.

## Gate 1 — Dataset identity and structure
- Official source URL and citation:
- Number of rows and columns (training/test/submission):
- Variable types and candidate predictors:
- Target class proportions:
- Missingness and duplicate-ID findings:
- Why these properties matter for the problem:

## Gate 2 — Unusual values and cleaning decisions
| Variable | Evidence (R command + output) | Why investigate? | Decision (retain, investigate, transform, etc.) | Rationale |
| --- | --- | --- | --- | --- |
| LapTime..s. | | | | |
| LapTime_Delta | | | | |
| Cumulative_Degradation | | | | |
| Other (student selected) | | | | |

Do not remove records unless you have a specific evidence-based reason.

## Gate 3 — EDA figures (choose 2–4)
| Student-created figure | R script that produces it | What question does it address? | Caption written by student |
| --- | --- | --- | --- |
| Figure 1 | | | |
| Figure 2 | | | |
| Figure 3 (optional) | | | |
| Figure 4 (optional) | | | |

Every figure in the final report needs a caption and labeled axes.

## Gate 4 — Hypotheses vs observed group rates
| Hypothesis (student's words) | Definition of groups and sizes | Observed rate comparison | Your interpretation | Limitations |
| --- | --- | --- | --- | --- |
| | | | | |
| | | | | |
| | | | | |

Note: descriptive associations do not prove causation. Small groups need caution.

## Gate 5 — Feature-availability and leakage review
For each variable, decide whether it is known **before the next lap**. The team must verify meanings from sources.

| Feature | At prediction time? (yes/no/unknown) | Evidence/source | Modeling decision to revisit |
| --- | --- | --- | --- |
| PitStop | | | |
| LapTime_Delta | | | |
| Cumulative_Degradation | | | |
| RaceProgress | | | |
| TyreLife | | | |
| Other candidate features | | | |

Split choice for later modeling (tentative only):
Potential grouping variables (`Race`, `Year`, `Driver` etc.):
Risks that remain unresolved:

## Gate 6 — Decisions and readiness for Deliverable 1
- Cleaning steps actually performed:
- Steps considered but **not** performed:
- Strongest two to four plots and reasons for including them:
- Important uncertainties or limitations:
- What we can and cannot claim from EDA:
- Student-authored Sections 1 and 2 prepared? (yes/no)
- Ready to proceed to Methods and Tools? (yes/no; why)

## Course reminder
The CSC 3220 instructions permit AI for understanding R functions, debugging, and grammar checking of student-written text; AI must not write analysis, report sections, slides, or interpretations for you. If you use AI assistance, include a short disclosure in the Appendix. Every team member must write a report section, contribute to Results, and independently code/test/document a model.
