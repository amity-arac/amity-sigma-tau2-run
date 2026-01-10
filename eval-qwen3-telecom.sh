export OPENAI_API_KEY="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"

tau2 run \
--domain telecom \
--agent-llm hosted_vllm/qwen3_4b_turnlevel_ft \
--agent-llm-args '{"base_url": "http://localhost:8000/v1", "api_key": "EMPTY"}' \
--user-llm gpt-4.1-2025-04-14 \
--num-trials 4 \
--save-to tau_max_telecom_v1_turn_level_only_failed_26_dec