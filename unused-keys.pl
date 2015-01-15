#!/usr/bin/env perl                                                                                                                                                                                                                       

# inspired by http://blogs.perl.org/users/ovid/2011/03/80-hacks.html

use strict;
use warnings;
use autodie ':all';
use Regexp::Common;

@ARGV or die "useage: $0 pm_file...";

while (my $module = shift) {

    my $key_found = qr/
        (?: \$self | \$_\[0\] | shift )  # $self or $_[0] or shift
        \s* ->                         # ->
        \s* {                          # { 
        \s* ($RE{quoted}|\w*)          # $hash_key
        \s* }                          # }
    /x;

    my %count_for;

    open my $fh, '<', $module;
    while (<$fh>) {
        while (/$key_found/g) {
            my $key = $1;
            $key =~ s/^["']|['"]$//g;    # try and strip the quotes

            $count_for{$key}{count}++;
            $count_for{$key}{line} = $.;
        }
    }
    close $fh;

    foreach my $key ( sort keys %count_for ) {
        next if $count_for{$key}{count} > 1;
        print "$module: '$key' at line $count_for{$key}{line}\n";
    }

}
