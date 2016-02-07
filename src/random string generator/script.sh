read a1 <<< "{query}"
echo -e "$( cat /dev/random | LC_CTYPE=C tr -dc "[:alpha:]0-9" | head -c $a1 )"
