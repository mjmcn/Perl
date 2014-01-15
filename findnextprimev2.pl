# Mike McNamara
#
# get the next prime number
#
# given a numeric input, this
# script finds the next prime number

use constant false => 0;
use constant true  => 1;


sub getNextPrime() {

$x=$_[0];

OUTER:	while (true){

	   $x++;

	   for ($i=2; $i <= $x ** (1/2); $i++){
			 if ($x % $i == 0){
				    next OUTER;
			 }
	   }
	   return $x;
	   }
}



while (true){
	print "\nEnter the starting number: ";
	chomp ($a = <>);

	if (!$a){exit};

	$prime = &getNextPrime($a);
	
	printf("The next prime number after %d is %d\n", $a, $prime);
	
	# while (true){
		# $a=$prime;
		
		# $prime = &getNextPrime($a);
	
	# printf("The next prime number after %d is %d\n", $a, $prime)
		
		# }
	
}

















