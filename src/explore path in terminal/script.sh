if [[ -d "$a1" ]];then
     #osascript -e 'display alert "'"$a1 is a directory"'"'
     open -a Terminal "$a1"

elif [[ -f "$a1" ]];then
     if [ -d "$(dirname "$a1")" ]; then
          VAR="$(cd "$(dirname "$a1")" && pwd)"
     #osascript -e 'display alert "'"$VAR is what you want"'"'
     fi
     #osascript -e 'display alert "'"$a1 is a regular file"'"'
     open -a Terminal "$VAR"
else
     osascript -e 'display alert "Sorry, cannot open Terminal with given path as working directory"' 
     exit 1
fi