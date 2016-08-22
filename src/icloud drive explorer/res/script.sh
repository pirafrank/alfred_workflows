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
        pdfexpert)
            open "$HOME/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents"
            ;;
        iawriter)
            open "$HOME/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents"
            ;;
        sketch)
            open "$HOME/Library/Mobile Documents/WUGMZZ5K46~com~bohemiancoding~sketch/Documents"
            ;;
        officesuite)
            open "$HOME/Library/Mobile Documents/M28Q9HQMUK~com~mobisystems~OfficeSuite/Documents"
            ;;
        *)
            open "$HOME/Library/Mobile Documents/com~apple~CloudDocs"
            exit 0
esac
