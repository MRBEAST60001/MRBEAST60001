# Open questions for the PI and team

Only items that genuinely need a decision or information the repository does not contain. Nothing here was resolved silently in `main.tex`.

## A. Information to supply (blocks the final numbers, not the science)

1. **Run logs for Studies 1–4.** No experiment outputs exist in this repository or environment (see `DATA_RECOVERY.md`). Table 1 is qualitative for that reason. Where are the logs, and who fills in: deployment strings, N per cell, temperature, horizon, prior-induction method, elicited prior strength, acquisition metric, point estimates, intervals?
2. **The 0.0146 / 0.0147 cell.** The proposal text gives these; they were not verifiable, so the manuscript says "almost exactly the gap predicted by preserving the prior odds". Confirm the numbers and an interval, then the digits can go back in.
3. **"About 16 hypotheses" and "tens of bits" (Study 2).** Both were in the proposal and are stated qualitatively in the manuscript. Confirm if they should be restored as numbers.
4. **Exact model identifiers.** Grok and DeepSeek versions and the Gemma 3 12B checkpoint are not recorded anywhere available; the manuscript uses family names only.
5. **Author list and affiliations.** Omitted from the title block rather than guessed.
6. **Gate owners and dates.** Omitted from Table 2 rather than shown empty.

## B. Estimand choices the proposal leaves open

7. **Horizon-aware vs. myopic value in the opposition study.** The manuscript defines the best experiment with the finite-horizon Q-value under the shared objective (Eq. 4), so both studies use one decision problem. The proposal's "rationally best experiment" is also consistent with one-step EIG. The two can disagree on which worlds count as opposition worlds. Which is primary?
8. **STOP in the opposition action set.** The manuscript assumes forced action in Study 1 (matching "forced to keep going") and reserves stopping for Study 2. If STOP is allowed, an avoided falsifier can be replaced by stopping and the two mechanisms entangle. Confirm.
9. **Regret scale.** Raw regret is primary; regret normalized by the oracle's best-minus-worst gap is a sensitivity. Should normalized be primary, given confident agents have less to gain from any experiment?
10. **Margin threshold λ.** Read as: each condition's margin under its own belief, λ chosen from oracle simulations so both conditions have support. Confirm, and fix λ or the rule before the freeze.
11. **Primary oracle.** Reported-belief oracle is marked primary. If the trajectory oracle should be primary instead, the headline estimand and the power simulation change.
12. **World-type thresholds** π_min, θ, φ_min, g_min, and the likelihood-ratio cap: numbers needed before Gate 1.

## C. Protocol decisions

13. **Number of competence-gate revision rounds.** The manuscript says "a small fixed number, set before the first run". Fix the number.
14. **Primary cost/utility regime (c, S, T)** and the sweep grid. The log score makes one-step continuation value equal EIG minus cost (Eq. 5), which is a reason to prefer it, but the choice is the PI's.
15. **Misleading-pilot selection rule.** Threshold for "legitimately favors H′", and whether the pilot experiment is fixed or oracle-chosen.
16. **Model families in the confirmatory matrix**, given budget, and whether Gemma 3 12B stays.

## D. Positioning

17. **Novelty statement.** The manuscript says only that we did not find work combining a planted false prior, a same-belief exact Bayesian policy, and outcomes on experiment choice and stopping, and names the nearest neighbors (Chen et al. 2026; Yamin et al. 2026; Jhaveri et al. 2026; BED-LLM). Are there papers from the group's own reading that should be added before this goes out?
