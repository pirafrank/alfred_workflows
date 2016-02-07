read a1 <<< "{query}"
TARGET_FOLDER="$(osascript -e 'tell application "Finder" to get the POSIX path of (target of front window as alias)')"
#osascript -e 'display alert "'"$TARGET_FOLDER$a1"'"'
touch "$TARGET_FOLDER$a1"
