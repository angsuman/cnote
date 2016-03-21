# cnote
Command Line Note Taker for Mac, Linux, BSD, Unix variants. 

## Install
Append this shell script content to ~/.bashrc (for access by your login account only) or to /etc/bashrc for access across all logins in the machine.

- All your notes are saved in ~/.notes file
- Each note is saved as a single line
- Each note is prefixed with a timestamp in 2016-03-19 08:39:21 format

## Commands
- n - Write a new note
- nls - List all notes matching your phrase/word with date and time
- ne - Open all notes in editor. You can set your default editor by defining the environment variable EDITOR in script
- nrm - Delete matching note(s). YOu should list the desired note with nls first before nrm to ensure other notes are not deleted.
