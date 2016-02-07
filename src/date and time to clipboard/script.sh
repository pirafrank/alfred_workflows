read a1 <<< "{query}"
if [[ $a1 == "12" ]]; then
date +%Y-%m-%d_%I.%M%p | pbcopy
else
date +%Y-%m-%d_%H.%M | pbcopy
fi