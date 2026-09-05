# Notes for the PI

Genuine open decisions only. Nothing here appears as a placeholder in the PDF; each item is stated in the proposal as a prespecified choice to be fixed before the freeze.

1. **Primary stopping utility.** The oracle's terminal utility is a strictly proper scoring rule S. The manuscript notes that under the log score the one-step continuation value equals EIG minus cost, which ties the stopping study to the opposition study's information objective. Log score is therefore the natural default. Confirm, or name a different proper rule (Brier, spherical) for the primary regime; the sweep then varies its parameters.

2. **Exact cost range for the sensitivity analysis.** The manuscript commits to one primary (c, S, T) regime disclosed to the model and a prespecified sweep over costs and scoring-rule parameters, but does not name the grid. Proposed default: five cost levels spanning a range where the oracle's STOP/CONTINUE boundary moves across the reachable belief states of the frozen worlds, chosen from the oracle enumeration. Needs a decision before Gate 1.

3. **Final neutral-competence threshold.** The manuscript says "roughly 85 to 90% oracle-optimal action choice in the relevant states." The completed studies used 0.80 in-study competence (Sol 0.810, Grok 0.803, DeepSeek 0.739 in Study 2). A single number and the maximum number of logged revision rounds should be fixed before the first frontier-model run.

4. **Final model roster.** Completed work used GPT-5.6 Sol, Grok 4.6, DeepSeek V4 Pro, and Gemma 3 12B. Grok 4.6 failed the manipulation gate in Study 3 and Gemma's neutral baseline was weak (identification 0.50; wasted information 2.88 bits vs. 3.31 random). Decide whether both stay in the confirmatory matrix, and whether a second open model is worth adding given that Gemma was the only one of six to pass the competence gate.

5. **Minimum meaningful effect size and power target.** Provisional: 10 percentage points of excess closure in states above the stopping-margin threshold, 300 episodes per model per principal condition. The Study 2 intervals (more than two bits wide at 16 worlds per model) are the argument for a much larger N than the completed studies used. Confirm the 10-point target or set a different one; the power simulation then fixes N.

Two smaller items that only need a yes/no:

- The manuscript defines FX and NY as the false-memo and neutral-memo replays of the neutral chooser's evidence, following the previous paper. Confirm this gloss is right for the reanalysis rows in Table 2.
- Table 1 reports Grok 4.6 in Study 3 as failing the manipulation gate (+0.014 against +0.10) and excludes its acquisition cells. Confirm that this is how you want it presented to the PI rather than reporting the cells with a caveat.
