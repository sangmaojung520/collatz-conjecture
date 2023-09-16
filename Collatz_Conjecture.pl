use strict;
use warnings;

my $input;
my $doagain;
my @array;
my $element;

collatz();

sub collatz{
	print "Please input a positive integer : ";
	chomp($input = <>);
	do{
		if($input == 1){
			if($input % 2 == 0){
		        $input = $input /2;
		        push(@array,$input);
		   }else{
			$input = $input*3+1;
			push(@array,$input);
		}
	     }
	}while $input == 1;
	
	if($input != 1 && $input > 0 ){
		while($input != 1){
		if($input % 2 == 0){
				$input = $input /2;
				push(@array,$input);
			}else{
				$input = $input*3+1;
				push(@array,$input);
			}
		}
	}
		
	
	foreach $element(@array){
		print $element." ";
	}
	print "\n";
	@array=();
	
	print "Do you want to do this again?(y/n) ";chomp($doagain = <>);
	if ($doagain =~ /^y/ || $doagain =~/^Y/) {
   		collatz();
   	} else {
   		print "goodbye\n";
  	}
}