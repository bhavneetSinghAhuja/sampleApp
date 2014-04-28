#!/usr/bin/perl -w
use Cwd;

$currWorkDir = &Cwd::cwd();

open (OUT, "$currWorkDir\\output\.txt") or die "cannot open $currWorkDir\\output\.txt: $!";

$restCount=0;

#Testcase1-checks for values other than the desired values(right now the values of rest Id's are hardcoded to keep things simple)
while(<OUT>){
    
    if($_==21184||$_==138913||$_==31855||$_==95185){
            print "Matching value found:- $_\n";
            $restCount=$restCount+1;
            }
    else{
        print "Erroneous value:- $_ Testcase Failed\n";        
        }
    
    }

#Testcase2-checks for number of desired resturants if they are greater or less than the desired one(right now the value is hardcoded to keep it simple i.e.)
if($restCount==4){
    
    print "Number of restIds are correct\n";
    }
else{
    
    print "Number of restIDs does not matches the desired: Testcase Failed";
    }
