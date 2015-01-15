# Jeremy Leader's bin scripts #

* `diffbuild` - convenience script to recursively diff two (mostly
    Perl) source directories, while ignoring build and source control
    clutter (e.g. `.git`, `.svn`, `blib`, etc.).
* `findowner` - reads `svn log -v` output from stdin, and counts how many times
    different authors have updated each package that matches a regex.
* `sshh` - sets `screen`'s title to the host being ssh'd to, and then
    sets it back to the default ("zsh") afterwards.
* `spark` - takes a comma or space separated list of data from the
    command line or standard input and prints it as a UTF-8 sparkline.
    Inspired by [Zach Holman's spark shell script][holmanspark].
    Unlike Holman's, supports floating-point data values, and -r
    option to print data range and statistics.
* `svndiff` - wrapper script to use vimdiff with svn's `--diff-cmd` option.
    Usage: `svn diff --diff-cmd svndiff ...`)
* `unused-keys.pl` - searches Perl files passed on the command line for
    hash keys that are only used once. [Original script by Ovid][ovid]

[holmanspark]: https://github.com/holman/spark
[ovid]: http://blogs.perl.org/users/ovid/2011/03/80-hacks.html
