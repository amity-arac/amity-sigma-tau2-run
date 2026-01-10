export OPENAI_API_KEY="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"

# --task-ids 0 5 6 7 11 13 18 19 20 23 25 27 28 30 33 34 35 36 37 38 41 42 54 55 59 60 62 71 72 74 76 79 82 88 90 91 95 98 100 101 102 103 104 105 106 107 109 110 111 112 \

tau2 run \
--domain retail \
--agent-llm hosted_vllm/qwen3_4b_turnlevel_ft \
--agent-llm-args '{"base_url": "http://localhost:8000/v1", "api_key": "EMPTY"}' \
--user-llm gpt-4.1 \
--num-trials 1 \
--max-concurrency 50 \
--save-to amax_sigma_retail_trial_1_1jan