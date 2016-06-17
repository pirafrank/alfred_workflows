read a1 <<< "{query}"

if [[ -d "$a1" ]];then
     open -a Sublime\ Text "$a1"
elif [[ -f "$a1" ]];then
     if [ -d "$(dirname "$a1")" ]; then
          VAR="$(cd "$(dirname "$a1")" && pwd)"
     fi
     open -a Sublime\ Text "$VAR"
else
     osascript -e 'display alert "Sorry, cannot open Sublime Text with given directory as project"'
exit 1
fi
