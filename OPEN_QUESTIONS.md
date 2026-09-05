# Open questions for the PI

Only decisions that the proposal leaves genuinely open and that change what gets built or measured. Each was found while auditing the estimands or trying to recover experiment metadata. None has been resolved in `main.tex`; where the manuscript needed a placeholder it says so in the text.

## A. Data that could not be recovered

1. **Preliminary-study metadata.** The repository contains no logs, so Table 1 has TODO placeholders for exact model deployment strings (including the Grok and DeepSeek versions), N per cell, temperature, horizon, prior-induction method, and all point estimates with intervals. Who owns filling these in, and from which run directories?
2. **The 0.0146 / 0.0147 cell.** These two numbers are carried over from the proposal text. They need to be confirmed against the logs, with an uncertainty interval, before the document goes out. If the interval is wide, the sentence should be softened further or dropped.

## B. Estimand ambiguities the proposal does not settle

3. **Horizon-aware vs. myopic value in the opposition study.** The manuscript defines "best experiment" with the finite-horizon Q-value under the shared objective (Eq. 4), so that the opposition and stopping studies use one decision problem. The proposal's wording ("rationally best experiment") is also consistent with one-step expected information gain. The two can disagree on which experiment is optimal and therefore on which worlds count as opposition worlds. Which is primary, and is the other reported as a sensitivity?
4. **Is STOP in the opposition action set?** The manuscript assumes the opposition study forces an experiment (no STOP), matching the proposal's "forced to keep going" framing, and reserves stopping for the second study. If STOP is allowed in opposition worlds, an avoided falsifier can be replaced by stopping rather than by another experiment, and the two mechanisms become entangled. Confirm forced-action for Study 1.
5. **Regret scale across prior conditions.** Regret is in shared-utility units, but the attainable range differs by belief state (a confident agent has less to gain from any experiment). The manuscript reports raw regret as primary and best-minus-worst-normalized regret as a sensitivity. Should the normalized version be primary instead?
6. **Restriction threshold λ for the stopping margin.** The proposal says the headline closure estimate is restricted to states where L_stop exceeds a prespecified threshold "under both priors". The manuscript reads this as: each condition's margin is computed under its own belief, and λ is chosen from oracle simulations so both conditions have adequate support. Confirm, and fix λ (or the rule for choosing it) before the freeze.
7. **Which oracle is primary for the headline numbers.** Both the reported-belief oracle and the trajectory oracle are run. The manuscript marks the reported-belief oracle as primary in the estimand definitions. If the PI prefers the trajectory oracle (which penalizes belief drift as well as action error), the primary estimand and the power simulation change.
8. **Thresholds that define world types.** π_min (how strong the false prior must be), θ (posterior level below which H' counts as falsified), φ_min (minimum falsification probability), g_min (value margin), and the likelihood-ratio cap for "moderate evidence" all need numbers before Gate 1. The manuscript says they come from oracle simulations; it does not choose them.

## C. Protocol decisions

9. **Number of competence-gate revision rounds (k).** The proposal leaves k unspecified. It bounds researcher degrees of freedom, so it should be fixed and logged before any frontier-model run.
10. **Primary cost/utility regime.** The stopping oracle needs one primary (c, S, T) triple disclosed to the model, plus the prespecified sweep grid. The scoring rule S is described as "proper" but not chosen; the manuscript notes that the log score makes one-step continuation value equal EIG minus cost, which is a reason to prefer it, but this is a choice for the PI.
11. **Misleading-pilot selection rule.** Pilot samples are selected so that a neutral-prior Bayesian posterior "legitimately favors H'". The selection threshold and whether the pilot experiment is fixed or oracle-chosen are open.
12. **Which model families are in scope for the confirmatory runs**, given the API budget, and whether Gemma 3 12B (which failed to show a same-prior control in Study 1) stays in the final matrix.

## D. Positioning

13. **Novelty statement.** The related-work search found no paper combining a planted false prior, a same-belief exact Bayesian policy, and outcomes on experiment choice and stopping. The closest are Chen et al. 2026 (exact Bayes seeded with the model's own elicited prior, passive updating only), Yamin et al. 2026 (belief-vs-action consistency, one-shot decisions), Jhaveri et al. 2026 (Wason 2-4-6 confirmation bias in LLM test selection, heuristic metric, no manipulated prior), and BED-LLM (EIG policy from LLM beliefs used as a method). The manuscript claims only "we did not find" and "our central comparison is". Is the PI comfortable with that, and are there papers from the group's own reading list that should be added?
