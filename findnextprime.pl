# Mike McNamara
#
# get the next prime number
#
# given a numeric input, this
# script finds the next prime number

sub isPrime(){

	$x=$_[0];
	
	for ($i=2; $i <= $x ** (1/2); $i++){
		if ($x % $i == 0){
			return (0);
		}
	}
	return (1);
}

sub getNextPrime() {

	$x=$_[0];

	while (&isPrime(++$x)!=1){}
	return $x;
}

while (true){
	print "\nEnter the starting number: ";
	chomp ($a = <>);

	if (!$a){exit};

	$prime = &getNextPrime($a);
	
	printf("The next prime number after %d is %d\n", $a, $prime)
}