# Jeremy Leader's bin scripts #

These are little useful scripts I've thrown together over the years, that don't
have a home anywhere else.

* `diffbuild` - convenience script to recursively diff two (mostly
    Perl) source directories, while ignoring build and source control
    clutter (e.g. `.git`, `.svn`, `blib`, etc.).
* `findowner` - reads `svn log -v` output from stdin, and counts how many times
    different authors have updated each package that matches a regex.
* `grabssh` - helper to capture ssh agent-forwarding environment to pass
    into re-attached screen sessions. Inspired by
    [Sam Rowe's blog post][samrowe].
* `git-bonsai` - script to check for branches that have already been
    merged/cherry-picked/otherwise added to main, and so can be deleted.
    Stolen from robh@ziprecruiter.com
* `git-rebase-all` - simple script that implements a `rebase-all` command for
    git, which checks out and pulls (with --rebase) updates for all branches
    based off of origin/master.
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
* `update-repos` - updates all repositories in my home directory whose config
    includes a specific string (intended to be used to search for a specific
    hostname in the remote url). By default, does a `git pull` from those
    repos, but a command (without the leading `git`) can be specified
    explicitly.

[samrowe]: http://samrowe.com/wordpress/ssh-agent-and-gnu-screen/
[holmanspark]: https://github.com/holman/spark
[ovid]: http://blogs.perl.org/users/ovid/2011/03/80-hacks.html
