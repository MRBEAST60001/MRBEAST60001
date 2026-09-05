# Data recovery record

This file states where every Study 1–4 statement in `main.tex` comes from, and what could not be recovered.

## What was searched (2026-09-05)

- The git repository `MRBEAST60001/MRBEAST60001`: it had **no commits** and **no remote branches** before this work began. The only branch on the remote is `claude/stubborn-prior-latex-xojv5l`, created here. `git log --all` shows only the commits made in this session.
- The working tree and the whole container filesystem (excluding system directories), searched for `*.jsonl`, `*.csv`, `*.parquet`, `*.ipynb`, and file names containing `sachs`, `prior`, `episode`, `grok`, `deepseek`, `gemma`. No experiment outputs, notebooks, config files, scripts, or prior PDFs were found.
- No team notes, author metadata, or owner/date information exists in the repository.

Conclusion: **no raw run data is available in this environment.** Nothing numerical was computed, and nothing was guessed. The sole source for the preliminary-study content is the proposal text supplied by the author.

## Source of each preliminary-study statement in the manuscript

| Manuscript statement | Source | Status |
|---|---|---|
| Study 1: deterministic Boolean worlds; Google Gemma 3 12B; manipulation took; no clear degradation of selection; no same-prior control existed yet | Proposal text, Table in §3 | Carried over verbatim in substance |
| Study 2: noisy causal worlds; OpenAI GPT-5.6 Sol, xAI Grok, DeepSeek; manipulation took; selection largely unaffected; single experiments could settle the question alone; ceiling effects | Proposal text | "~16 hypotheses" and "tens of bits" were in the proposal but are **not verifiable** from data, so the manuscript states the point qualitatively |
| Study 3: computational lab tasks; OpenAI GPT-5.6 Sol, xAI Grok; weak or tied action differences; best and second-best actions nearly equal in value | Proposal text | Carried over |
| Study 4: Sachs-style real biology; OpenAI GPT-5.6 Sol; selection robust to the prior; no exact oracle; evidence saturated | Proposal text | Carried over |
| "In one real-data condition the residual posterior gap was almost exactly the gap predicted by preserving the prior odds" | Proposal text gives 0.0146 (residual gap) vs 0.0147 (prior-odds prediction) | Numbers **not verifiable** from data; the manuscript states the comparison qualitatively and omits the digits. Restore the digits with an interval once the log is located |
| "In several cells false-prior models moved at least as far against their own false theory as neutral models did" | Proposal text | Not verifiable from data; carried over as the author's summary statement |

## Fields deliberately omitted from the manuscript

The following were removed from the visible PDF because they could not be recovered, rather than shown as placeholders:

- exact deployment / API identifier for each model (GPT-5.6 Sol, Grok, DeepSeek, Gemma 3 12B checkpoint);
- number of worlds and episodes per condition, total model calls;
- temperature and sampling settings;
- horizon / number of experiment steps;
- prior-induction method and intended vs. elicited prior strength per study;
- acquisition metric definitions, manipulation-check and acquisition point estimates, and uncertainty intervals;
- author list and affiliations;
- gate owners and target dates.

Each appears in `OPEN_QUESTIONS.md` as an item for the team.

## Bootstrap intervals

None were computed, because no per-episode data exists here. When the logs are located, a per-world (cluster) bootstrap over episodes, 2,000 resamples, percentile 95% intervals, is the intended default; document any deviation in the analysis code.
