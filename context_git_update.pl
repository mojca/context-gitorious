#!/usr/bin/perl -w

use strict;
use LWP::Simple;

chdir "/home/admin/context_git_update";

open FILE, "<", "last_update.txt" or die $!;

my @file = <FILE>;
my $date = $file[0];
chomp $date;

close FILE;

open FILE, "<", "last_stable_update.txt" or die $!;

my @stablefile = <FILE>;
my $stable_date = $stablefile[0];
chomp $stable_date;

close FILE;

my $content = get("http://www.pragma-ade.com/download-2.htm");
die "ConTeXt webpage beta download failed" unless defined $content;

my $stable_content = get("http://www.pragma-ade.com/download-1.htm");
die "ConTeXt webpage stable download failed" unless defined $stable_content;

my $new_stable_date;
if ($stable_content =~ /<td nowrap><div class="more-room">(\d\d\d\d-\d\d-\d\d\s\d\d:\d\d)<\/div><\/td>/) {
  $new_stable_date = $1;
  system ("/usr/bin/logger -t ConTeXt $stable_date\n");
  system ("/usr/bin/logger -t ConTeXt $new_stable_date\n");
  print "$stable_date\n";
  print "$new_stable_date\n";
} else {
  die "ConTeXt webpage stable date find failed";
}

my $newdate;
if ($content =~ /<td nowrap><div class="more-room">(\d\d\d\d-\d\d-\d\d\s\d\d:\d\d)<\/div><\/td>/) {
  $newdate = $1;
  system ("/usr/bin/logger -t ConTeXt $date\n");
  system ("/usr/bin/logger -t ConTeXt $newdate\n");
  print "$date\n";
  print "$newdate\n";
} else {
  die "ConTeXt webpage beta date find failed";
}

my ($y, $m, $d, $h, $min);

$new_stable_date =~ /(\d\d\d\d)-(\d\d)-(\d\d)\s(\d\d):(\d\d)/;
$y = $1; $m = $2; $d = $3; $h = $4; $min = $5;
my $nsd = ($y*372+$m*31+$d)*24*60+$h*60+$min;

$stable_date =~ /(\d\d\d\d)-(\d\d)-(\d\d)\s(\d\d):(\d\d)/;
$y = $1; $m = $2; $d = $3; $h = $4; $min = $5;
my $sdt = ($y*372+$m*31+$d)*24*60+$h*60+$min;

system ("/usr/bin/logger -t ConTeXt $sdt $nsd\n");
print "$sdt $nsd\n";
my $update_stable = 0;
if ($nsd > $sdt) {
  $update_stable = 1; 
}

$newdate =~ /(\d\d\d\d)-(\d\d)-(\d\d)\s(\d\d):(\d\d)/;
$y = $1; $m = $2; $d = $3; $h = $4; $min = $5;
my $nd = ($y*372+$m*31+$d)*24*60+$h*60+$min;

$date =~ /(\d\d\d\d)-(\d\d)-(\d\d)\s(\d\d):(\d\d)/;
$y = $1; $m = $2; $d = $3; $h = $4; $min = $5;
my $dt = ($y*372+$m*31+$d)*24*60+$h*60+$min;

system ("/usr/bin/logger -t ConTeXt $dt $nd\n");
print "$dt $nd\n";
my $update_beta = 0;
if ($nd > $dt) {
  $update_beta = 1; 
}

if ($update_stable && $update_beta) {
  if ($nd > $nsd) {
    system ("/usr/bin/logger -t ConTeXt updating beta and stable");
    print "updating beta and stable\n";
    &update_git_repo("beta");
    &update_git_repo("stable");
  } else {
    system ("/usr/bin/logger -t ConTeXt updating stable and beta");
    print "updating stable and beta\n";
    &update_git_repo("stable");
    &update_git_repo("beta");
  }
} elsif ($update_stable) {
  if ($nd < $nsd) {
    system ("/usr/bin/logger -t ConTeXt updating stable");
    print "updating stable\n";
    &update_git_repo("stable");
  } else {
    system ("/usr/bin/logger -t ConTeXt nothing to update, skiped stable update, too old version");
    print "nothing to update, skiped stable update, too old version\n";
  }
} elsif ($update_beta) {
  system ("/usr/bin/logger -t ConTeXt updating beta");
  print "updating beta\n";
  &update_git_repo("beta");
} else {
  system ("/usr/bin/logger -t ConTeXt nothing to update");
  print "nothing to update\n";
}

sub update_git_repo {
    my $update_version = @_;

    #download, update git, git push
    
    my $filename;
    my $filedate;
    if ($update_version =~ /beta/) {
        $filedate = $newdate;
        $filedate =~ s/ /_/g;
        $filename = "$filedate"."_cont-tmf.zip";
        my $contextfile = getstore("http://www.pragma-ade.com/context/beta/cont-tmf.zip", $filename);
        die "ConTeXt file download failed" unless is_success($contextfile); 
    } else {
        $filedate = $new_stable_date;
        $filedate =~ s/ /_/g;
        $filename = "$filedate"."_cont-tmf_current.zip";
        my $contextfile = getstore("http://www.pragma-ade.com/context/current/cont-tmf.zip", $filename);
        die "ConTeXt file download failed" unless is_success($contextfile); 
    }

    system("rm -fr context/*") == 0 or die "ConTeXt delete context dir failed";

    my  @args = ("unzip", $filename, "-dcontext");
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

    my $message = "empty ";
    while (<FILE>) {
      if (/\\newcontextversion{(\d\d\d\d\.\d\d\.\d\d\s\d\d:\d\d)}/) {
        print "$1\n";
        if ($update_version =~ /beta/) {
            $message = "beta " . $1;
        } else {
            $message = "stable " . $1;
        }
        last;
      }
    }

    close FILE;

    system("git add .") == 0 or die "ConTeXt git add1 all failed";
    system("git add -u") == 0 or die "ConTeXt git add2 all failed";
    system("git commit --message=\"$message\"") == 0 or die "ConTeXt git commit failed";
    #system("git push origin origin") == 0 or die "ConTeXt git push failed";
    chdir "..";

    if ($update_version =~ /beta/) {
      open FILE, ">", "last_update.txt" or die $!;
    } else {
      open FILE, ">", "last_stable_update.txt" or die $!;
    }
    print FILE $newdate;
    close FILE;
}
 
