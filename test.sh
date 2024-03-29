# Colorise the EOF statement so that:
#
# Variable Names are highlighted
# Low / Med / High are highted
# Temperature ranges are highlighted
#
# All normal text is in terminal white

cat << EOF
Tokens: $TOKEN

A token is considered to be 4 characters. The number of tokens set 
must be enough to include the length of the provided input and expected output.

Temperature: $TEMP
The temperature parameter controls the randomness of the output. 

Low (0.1 - 0.3)
Predictable, deterministic output.

Medium (0.4 - 0.6)
An adaptable range balancing creativity and predictability

High (0.7 - 1.0)
Creative and unpredictable. Strong possibility of hallucination.

EOF

