#!/usr/bin/perl

undef $/;
$_ = <>;
$n = 0;

for $match (split(/(?=[.]class)/)) {
  open(O, '>split' . $n++ . '.smali');
  print O $match;
  close(O);
}
