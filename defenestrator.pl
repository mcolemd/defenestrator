#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

system ("clear");

print "\n   o=(=(=(=(=(=(=)=)=)=)=o\n";
print "     !-'-'-'-/_\\-'-'-'-! \n";
print "     ! !  , /___\\`  ! !!\n";
print "     !!! , /  |  \\`  ! !\n";
print "     !!  ,|___|___`  !!!\n";
print "     !_,| |_______|` `_!\n";
print "     !-`| |       | |,-!\n";
print "     !!!! |       | ! !!\n";
print "     !!!! |       | !!!!\n";
print "     !!!!_|_______|_!!!!\n";
print "     !!!!___________!!!! \n";
print "     !!!!           !!!!   \n";
print "     !!!!           !!!!   \n";
print "     !!!!           !!!!   \n";
print "     !!!!           !!!!\n\n\n";

print "Defenestrator will handle prepping text files and scripts\n";
print "   for easy conversion between UNIX and Windows Systems.\n\n\n";

print" 1) UNIX --> Windows (De-Fenestrate)\n";
print" 2) Windows --> UNIX (Re-Fenestrate)\n\n";

print "Select conversion method [1 or 2]: ";
my $method = <STDIN>;
chomp($method);

print "\n";
system("ls -lh");
print"\n Enter the filename to convert: ";
my $filename = <STDIN>;
chomp($filename);

if ($method eq 1) {
system("awk 'sub(\"\$\", \"\\r\")' $filename > $filename.txt");
}

if ($method eq 2) {
system("awk '{ sub(\"\\r\$\", \"\"); print }' $filename > $filename.txt");
}

