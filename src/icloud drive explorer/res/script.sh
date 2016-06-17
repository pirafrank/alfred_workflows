#!/bin/bash

if [[ $1 == "" ]]; then
    open "$HOME/Library/Mobile Documents/com~apple~CloudDocs"
    exit 0
fi

case "$1" in
        ithoughtx)
            open "$HOME/Library/Mobile Documents/iCloud~com~toketaware~ios~ithoughts/Documents/"
            ;;
        docs)
            open "$HOME/Library/Mobile Documents/com~apple~CloudDocs/iCloud Docs"
            ;;
        keynote)
            open "$HOME/Library/Mobile Documents/com~apple~Keynote/Documents"
            ;;
        pages)
            open "$HOME/Library/Mobile Documents/com~apple~Pages/Documents"
            ;;
        numbers)
            open "$HOME/Library/Mobile Documents/com~apple~Numbers/Documents"
            ;;
        *)
            open "$HOME/Library/Mobile Documents/com~apple~CloudDocs"
            exit 0
esac
