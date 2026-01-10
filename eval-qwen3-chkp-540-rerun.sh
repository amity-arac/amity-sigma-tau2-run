export OPENAI_API_KEY="<API_KEY>"

tau2 run \
--domain retail \
--agent-llm hosted_vllm/qwen3_4b_turnlevel_ft \
--agent-llm-args '{"base_url": "http://localhost:8000/v1", "api_key": "EMPTY"}' \
--user-llm gpt-4.1 \
--num-trials 4 \
--max-concurrency 100 \
--save-to amax_grpo_qwen3_chkp_540_and_sigma_trial_4

tau2 run \
--domain airline \
--agent-llm hosted_vllm/qwen3_4b_turnlevel_ft \
--agent-llm-args '{"base_url": "http://localhost:8000/v1", "api_key": "EMPTY"}' \
--user-llm gpt-4.1 \
--num-trials 4 \
--max-concurrency 100 \
--save-to amax_grpo_qwen3_chkp_540_and_sigma_trial_4_airline

tau2 run \
--domain telecom \
--agent-llm hosted_vllm/qwen3_4b_turnlevel_ft \
--agent-llm-args '{"base_url": "http://localhost:8000/v1", "api_key": "EMPTY"}' \
--user-llm gpt-4.1 \
--num-trials 4 \
--save-to amax_grpo_qwen3_chkp_540_and_sigma_trial_4_telecom