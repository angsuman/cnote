# CNote - Command Line Note Taker
Supported Platforms: Mac, Linux, BSD, Unix variants. 

## Installation
### Automatic with installation script
Run on Terminal:

wget --no-check-certificate -q  -O- https://raw.githubusercontent.com/angsuman/cnote/master/install.sh|bash -

### Manual
Append the shell script content (https://raw.githubusercontent.com/angsuman/cnote/master/n.sh ) to ~/.bashrc (for access by your login account only) or to /etc/bashrc for access across all logins in the machine.

- All your notes are saved in ~/.notes file
- Each note is saved as a single line
- Each note is prefixed with a timestamp in 2016-03-19 08:39:21 format

## Commands
- n - Add note. Enclose in quotes to use any character in note. Note is always single-line but there is no limitation on the length of the line. Newlines must not be used.
- nls - List all notes matching your phrase/word with date and time
- ne - Open all notes in (default) editor. You can set your default editor by defining the environment variable EDITOR in script
- nrm - Delete matching note(s). YOu should list the desired note with nls first before nrm to ensure other notes are not deleted.
- nh - Help

# Developer
Angsuman Chakraborty
- Web:      http://taragana.com/
- Facebook: https://www.facebook.com/angsuman.chakraborty
- Twitter:  https://twitter.com/angsuman
- LinkedIn: https://in.linkedin.com/in/angsuman
- Blog:     http://blog.taragana.com
