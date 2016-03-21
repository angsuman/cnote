# CNote - Command Line Note Taker
CNote is a super simple tool which allows you to instantly take notes from command line, while coding / researching. Saves all notes in ~/.notes; searchable & time-stamped.

Here's how you can add a note:

`n Added cnote to github at https://github.com/angsuman/cnote`

Tested Platforms: Cent OS, Ubuntu, Mac OS X, Raspberry Pi

Version: 1.0

## CNote Commands(Manual)
- **n** Add note. Enclose in quotes to use any character in note. Note is always single-line but there is no limitation on the length of the line. Newlines must not be used
  - `n cnote supports adding complex notes. Notes with escape characters should be quoted.`
- **nls** List all notes matching your phrase/word with date and time
  - `nls cnote` - List all notes containing `cnote`
- **ne** Open all notes in (default) editor. You can set your default editor by defining the environment variable EDITOR in script
  - `ne` - Open all notes in default editor
- **nrm** Delete matching note(s). YOu should list the desired note with nls first before nrm to ensure other notes are not deleted
  - `nrm dotnet` - Delete all note(s) containing `dotnet`
- **nh** Help

### Notes
- All your notes are saved in ~/.notes file
- Each note is saved as a single line
- Each note is prefixed with a timestamp in 2016-03-19 08:39:21 format
- To backup ~/.notes create a symbolic link to this file in your Dropbox directory. Dropbox crawls symbolic links and will automatically update as and when you add a note.

## Installation
### Automatic with installation script
Run on Terminal:

`wget --no-check-certificate -q  -O- https://raw.githubusercontent.com/angsuman/cnote/master/install.sh|bash -`

### Manual installation
Append the shell script content (https://raw.githubusercontent.com/angsuman/cnote/master/n.sh ) to ~/.bashrc (for access by your login account only) or to /etc/bashrc for access across all logins in the machine.

# Developer
Angsuman Chakraborty
- Email: angsuman@taragana.com
- Web:      http://taragana.com/
- Facebook: https://www.facebook.com/angsuman.chakraborty
- Twitter:  https://twitter.com/angsuman
- LinkedIn: https://in.linkedin.com/in/angsuman
- Blog:     http://blog.taragana.com
