read a1 <<< "{query}"

if [[ -d "$a1" ]];then
     open -a Visual\ Studio\ Code "$a1"
elif [[ -f "$a1" ]];then
     if [ -d "$(dirname "$a1")" ]; then
          VAR="$(cd "$(dirname "$a1")" && pwd)"
          open -a Visual\ Studio\ Code "$VAR"
     fi
else
     osascript -e 'display alert "Sorry, cannot open Visual Studio Code with given directory as project"'
exit 1
fi
