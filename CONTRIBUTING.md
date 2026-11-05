# Team contribution and collaboration guide

This is a **CSC 3220 student assignment**. All analysis, interpretation, report text, and slides must be students' own work, consistent with the instructor's AI policy.

## Each member's required contribution

Every person must:
1. **Code, test, and document at least one model** in R.
2. **Write at least one report section**.
3. **Contribute to Section 5 (Results)**.
4. **Present part of the team presentation**.
5. Review and agree on the Appendix contribution table; complete their own peer evaluation by December 4.

## Before contributing

- Clone the public repository and open the `.Rproj` in RStudio.
- Download competition data locally into `data/raw/`; do not commit raw competition files, API keys, or private information.
- Review the [project checklist](PROJECT_PLAN.md) and [course deliverables](README.md#course-deadlines).
- Confirm an individual assignment in the team coordination channel.

## Branch and review workflow

1. Pull the current `main` branch.
2. Create a branch such as `feature/eda-member-a`, `model/random-forest-member-b`, or `docs/reproducibility`.
3. Commit small, comprehensible changes with messages such as `Add own EDA plot script`.
4. Open a pull request to `main`; include what changed, how to run it, and what was tested.
5. Have another teammate check reproducibility and academic integrity before merging.
6. Keep shared split/seed decisions consistent across model experiments. Do not change evaluation data silently.

## Code requirements

- Analyze data **in R**.
- Keep actual data inspection, preprocessing, modeling, evaluation, and interpretation student-authored.
- Document packages, R version, random seed, data source, and run order.
- Cite external ideas/code in both code comments and the report; **do not copy** public solutions.
- AI may assist with debugging, R function explanations, and proofreading student-written prose. AI may **not** write the team's analysis, report sections, slides, or result interpretations.
- Record any AI use in the report Appendix as required by the course.

## Pull request checklist

- [ ] Change is mine and I can explain every line and claim.
- [ ] I tested the change locally and noted the run instructions.
- [ ] Reusable code works with paths relative to the repository root.
- [ ] The shared validation data was not used to tune this model.
- [ ] No data files, secrets, or unapproved third-party code were committed.
- [ ] Updated related documentation and sources/citations where applicable.
