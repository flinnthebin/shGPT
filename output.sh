cat << EOF
Tokens: $TOKENA token is considered to be 4 characters. The number of tokens set must be enough to include the length of the provided input and expected output.
Temperature: $TEMP
The temperature parameter controls the randomness of the output. \033[1;34mLow\033[0m (0.1 - 0.3) Predictable, deterministic output.
\033[1;32mMedium\033[0m (0.4 - 0.6) An adaptable range balancing creativity and predictability
\033[1;31mHigh\033[0m (0.7 - 1.0) Creative and unpredictable. Strong possibility of hallucination.
EOF
