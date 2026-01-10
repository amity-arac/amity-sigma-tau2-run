## This is the modified version of tau2-bench for leaderboard submission of https://huggingface.co/amityco/amax-sigma-thinking-v1r

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