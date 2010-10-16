#!/usr/bin/perl -w

use strict;
use LWP::Simple;

chdir "/home/admin/context_git_update";

open FILE, "<", "last_update.txt" or die $!;

my @file = <FILE>;
my $date = $file[0];
chomp $date;

close FILE;

my $content = get("http://www.pragma-ade.com/download-2.htm");
die "ConTeXt webpage download failed" unless defined $content;

if ($content =~ /<td nowrap><div class="more-room">(\d\d\d\d-\d\d-\d\d\s\d\d:\d\d)<\/div><\/td>/) {
  my $newdate = $1;
  print "$date\n";
  print "$newdate\n";
  if ($newdate !~ /^$date$/) {
    print "notequal dates\n";
    #download, update git, git push
    my $filedate = $newdate;
    $filedate =~ s/ /_/g;
    my $contextfile = getstore("http://www.pragma-ade.com/context/beta/cont-tmf.zip", "$filedate"."_cont-tmf.zip");
    die "ConTeXt file download failed" unless is_success($contextfile); 

    system("rm -fr context/*") == 0 or die "ConTeXt delete context dir failed";

    my  @args = ("unzip", "$filedate"."_cont-tmf.zip", "-dcontext");
    system(@args) == 0 or die "ConTeXt file unzip failed";
    
    if ($? == -1) {
      print "failed to execute: $!\n";
      die "ConTeXt file unzip failed";
    } elsif ($? & 127) {
      printf "child died with signal %d, %s coredump\n",
      ($? & 127),  ($? & 128) ? 'with' : 'without';
      die "ConTeXt file unzip failed";
    } else {
      printf "child exited with value %d\n", $? >> 8;
    }

    chdir "context";
    open FILE, "<", "tex/context/base/cont-new.tex" or die $!;

    my $message = "beta ";
    while (<FILE>) {
      if (/\\newcontextversion{(\d\d\d\d\.\d\d\.\d\d\s\d\d:\d\d)}/) {
        print "$1\n";
        $message = "beta " . $1;
        last;
      }
    }

    close FILE;

    system("git add .") == 0 or die "ConTeXt git add all failed";
    system("git add -u") == 0 or die "ConTeXt git add all failed";
    system("git commit --message=\"$message\"") == 0 or die "ConTeXt git commit failed";
    system("git push origin origin") == 0 or die "ConTeXt git commit failed";
    chdir "..";

    open FILE, ">", "last_update.txt" or die $!;
    print FILE $newdate;
    close FILE;
  } else {
    print "equal dates\n";
  }
} else {
  die "ConTeXt webpage date find failed";
}
 
