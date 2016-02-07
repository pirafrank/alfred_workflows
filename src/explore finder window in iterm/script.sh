TARGET_FOLDER="$(osascript -e 'tell application "Finder" to get the POSIX path of (target of front window as alias)')"
if [[ $TARGET_FOLDER == "" ]]; then
TARGET_FOLDER="/Users/$(whoami)/Desktop"
fi
open -a iTerm "$TARGET_FOLDER"
