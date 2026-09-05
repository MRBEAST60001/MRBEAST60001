# Data provenance for the numbers in main.pdf

## Where the numbers come from

The repository at session start contained no commits, logs, JSON/JSONL, CSV, notebooks, scripts, or configs, and no other branches existed on the remote. A full-disk search found nothing either. No number in the manuscript was computed in this session.

Every quantitative statement in Sections 2 and 4.3 comes from one of two sources:

1. **The previous paper** (uploaded PDF: *The Stubborn Prior: Strong Priors, Stable Experiments, and Uneven Recovery in LLM Scientists*, T. Goswami, Algoverse AI Research, September 2026, 18 pp.). Its text was extracted and each value below was located in it.
2. **The author's written instructions for this revision**, which supplied the corrected reanalysis (Table 2), the Sachs Bayes-predicted gap, and the oracle-only opposition enumeration. These postdate the paper and are not in it.

## Study-by-study

| Value in the manuscript | Source |
|---|---|
| Study 1: Gemma 3 12B; 48 paired worlds; NE/FE/NY/FY; only 1 of 6 open models passed the gate; neutral identification 0.50; repeat-action 0.19; wasted information 2.88 bits vs 3.31 random; H' adopted in 0.85 of FE episodes; median 2.0 rounds to refutation; FE−NE +0.105 [−0.471, +0.665]; discriminating-test rate −0.002 [−0.067, +0.063]; end-of-episode uncertainty +0.236 [−0.134, +0.610]; exploratory persistence 0.843 [0.748, 0.927], confidence ≈0.95 | Previous paper (all values found in text) |
| Study 2: six variables; 128 mechanisms; 16 worlds; five arms; Sol/Grok 4.6/DeepSeek V4 Pro; completion 79/80, 80/80, 80/80; competence 0.835/0.810, 0.823/0.803, 0.787/0.739; opening p(H') 0.185→0.452, 0.113→0.280, 0.1932→0.5456; FE−NE +0.123 [−1.172, +1.418], +0.152 [−0.492, +0.796], −0.794 [−2.128, +0.540]; raw FX−NY gaps +0.128, +0.036, +0.0919 | Previous paper (all values found in text) |
| Study 3: 8 tasks; Sol 32/32; competence 0.835/0.799; acquisition efficiency 0.784; p(H') 0.263→0.403 (+0.140); FE−NE +0.0181 [−0.0247, +0.0608]; 7/8 exact ties; action lists same length 7/8, same set 5/8, same order 2/8; Grok shift +0.0138 (failed +0.10 gate), efficiency 0.113, low-information flag 7/8 | Previous paper (all values found in text) |
| Study 4: Sol; 7,466 cells; 9 conditions; 11 markers; 60/20/20 split; 2 pilot + 8 confirmatory tasks; 32/32 episodes, no failures/retries/reruns/exclusions; manipulation +0.393 [0.325, 0.451] chooser, +0.453 [0.432, 0.474] replay; FE−NE +0.0211 nats [−0.0209, +0.0841]; identical measurements 6/8; raw FX−NY +0.0146 | Previous paper (all values found in text) |
| Table 2 (corrected reanalysis): Sol causal n=15 −0.61 [−1.72, +0.77]; Grok causal n=16 −0.77 [−1.36, −0.22]; DeepSeek causal n=16 −1.95 [−2.86, −0.93]; Sol signalling n=8 −2.75 [−3.21, −1.96] | Author's revision instructions (reanalysis postdates the paper). The −0.61, −1.95, −2.75 values also appear in the paper text; −0.77 does not. |
| Sachs decomposition: Bayes-predicted gap +0.0147; residual ≈ −0.0001, interval ≈ [−0.0003, 0] | Author's revision instructions (not in the paper) |
| Oracle feasibility (Section 4.3): 4 binary variables, 4 edges, 16 hypotheses, noisy-OR λ=0.8, leak 0.10, sensitivities (0.9, 0.05) and (0.7, 0.20), 22 experiments, 240 world pairs per setting, ρ ∈ {1/16, .25, .5, .75, .9, .99}, 8,640 cells, 18 exactness tests; 131/240 (55%), 67/240 (28%), 29 and 52 worlds; ranks at ρ=0.9: 125/41/41, never worse than tenth | Author's revision instructions (oracle work postdates the paper) |

## Model names

"OpenAI GPT-5.6 Sol", "xAI Grok 4.6", "DeepSeek V4 Pro", and "Google Gemma 3 12B" follow the previous paper, whose run identifiers are `gpt-5.6-sol`, `grok-4.6`, `deepseek-v4-pro`, and `gemma3:12b`. No version strings were invented.

## Arm notation

NE/FE = neutral/false memo, model chooses experiments. NY/FX = neutral/false memo, replay of the neutral chooser's evidence. FY = false memo, replay of the false chooser's evidence. Taken from the previous paper's design section.

## Rounding

Values with four decimals in the source are shown to three in the tables (0.3524 → 0.352; 0.0181 → 0.018; 0.0919 → 0.092; 0.0211 → 0.021 and its interval). The Sachs decomposition keeps four decimals because the comparison is at that precision.
