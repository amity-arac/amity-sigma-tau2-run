## This is the modified version of tau2-bench for leaderboard submission of https://huggingface.co/amityco/amity-sigma-thinking-v1r

### Key Highligh Technique and Enhancement
#### on retail domain
- Baseline: `53.5` as model card (https://huggingface.co/Qwen/Qwen3-4B-Thinking-2507)
- with Auto Prompt Optimization for Agentic Task (`ROAD`): `65.2` as research paper (https://arxiv.org/pdf/2512.24040)
- with `ROAD` + Finetune using GRPO technique on multi-turn interaction environment: `78.5` ( research paper comming soon )

### Modified file
```
./data/tau2/domains/retail/policy.md
```
the previous version is 
```
./data/tau2/domains/retail/policy-bak.md
```

### To run the evaluation for 3 domains

0. Install the prerequisites as tau2-bench required

1. inference the model using vllm
```bash
vllm serve amityco/amax-sigma-thinking-v1r \
    --reasoning-parser deepseek_r1 \
    --enable-auto-tool-choice \
    --tool-call-parser hermes \
    --max-model-len 45000 \
    --trust-remote-code \
    --tensor-parallel-size 8
```

2. run evaluation script
add the OPENAI_API_KEY in file eval-qwen3-chkp-540-rerun.sh then
```bash
bash eval-qwen3-chkp-540-rerun.sh
```
