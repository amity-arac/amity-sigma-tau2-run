tau2 run \
--domain retail \
--agent-llm hosted_vllm/qwen3_4b_ft \
--agent-llm-args '{"base_url": "http://localhost:8000/v1", "api_key": "EMPTY"}' \
--user-llm gpt-4.1 \
--num-trials 2 \
--max-concurrency 114 \
--save-to tau_max_retail_v1_chkp_780_new_gepa_2_trial