read a1 <<< "{query}"
#osascript -e 'display alert "'"$a1"'"' # debug

if [[ -d "$a1" ]];then
     TARGET_FOLDER="$(osascript -e 'tell application "Finder" to get the POSIX path of (target of front window as alias)')"
     #osascript -e 'display alert"'"$TARGET_FOLDER"'"' # debug
     #osascript -e 'display alert"'"$TARGET_FOLDER$(basename "$a1")"'"' # debug
     ln -s "$a1" "$TARGET_FOLDER$(basename "$a1")"
elif [[ -f "$a1" ]];then
     SOURCE="$a1"
     FILENAME="${SOURCE##*/}"
     TARGET_FOLDER="$(osascript -e 'tell application "Finder" to get the POSIX path of (target of front window as alias)')"
     TARGET="$TARGET_FOLDER$FILENAME"
     ln -s "$SOURCE" "$TARGET"
else
     osascript -e 'display alert "Sorry, I got messed up!"'
     exit 1
fi