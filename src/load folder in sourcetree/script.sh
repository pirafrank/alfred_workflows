# to paste in workflow script frame

read a1 <<< "{query}"

if [[ -d "$a1" ]];then
     open -a Sourcetree "$a1"
elif [[ -f "$a1" ]];then
     osascript -e 'display alert "Sorry, cannot open files with Sourcetree"'
     exit 1
else
     osascript -e 'display alert "Sorry, cannot open Sourcetree with given directory as project"'
exit 1
fi
