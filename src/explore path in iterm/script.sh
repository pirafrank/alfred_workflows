read a1 <<< "{query}"

if [[ -d "$a1" ]];then
     open -a iTerm "$a1"
elif [[ -f "$a1" ]];then
     if [ -d "$(dirname "$a1")" ]; then
          VAR="$(cd "$(dirname "$a1")" && pwd)"
     fi
     open -a iTerm "$VAR"
else
     osascript -e 'display alert "Sorry, cannot open Terminal with given path as working directory"'
exit 1
fi
