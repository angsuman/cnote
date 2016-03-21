# Command Line Note Taker
# DO NOT CHANGE THE LINE ABOVE
# Uncomment the line to specify your default editor. It is used to edit your notes.
# export EDITOR=nano

# Add note
n() {
        echo `date "+%Y-%m-%d %H:%M:%S"`'> '"$*" >> ~/.notes
        tail -1 ~/.notes
}

# List all notes
nls() {
        grep "$*" ~/.notes
}

# Open notes in editor
ne() {
        $EDITOR ~/.notes
}

# Delete matching notes
nrm() {
        if [ -n "$*" ]; then
                grep -v "$*" ~/.notes > ~/.notes.grepped
                cmp -s ~/.notes ~/.notes.grepped
                if [ $? -eq 1 ]; then
                        mv ~/.notes ~/.notes.backup
                        mv ~/.notes.grepped ~/.notes
                else
                        rm ~/.notes.grepped
                fi
        fi
}
nh() {
        echo "Angsuman's Note Commands :-"
        echo
        echo n - Add note. Enclose in quotes to use any character in note. Note is always single-line but there is no limitation on the length of the line. Newlines must not be used.
        echo
        echo ne - Open notes in default editor
        echo
        echo nrm - Delete notes matching your pattern. This is non-reversible. So identify notes first with nls.
        echo
        echo nls - List notes matching your pattern.
        echo
}

####
