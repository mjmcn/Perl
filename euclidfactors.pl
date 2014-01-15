# Michael McNamara
# 
# This little script is an implementation of
# Euclid's algorithm to determine the greatest
# common factor shared between two given numbers
# 
# Euclid's method is to subtract the lesser given
# number from the greater. The difference and the former
# lesser given are then used to form a new pair of numbers.
# In this new pair, the lessor number is once again subtracted
# from the greater number to form a new difference and hence
# yet another pairing. The procedure is continued until
# both numbers are equal. That resultant number is the
# greatest common factor of the two original numbers.

sub gcf() {
	
	$x = $_[0];
	$y = $_[1];
	
	while ($x!=$y){
		if ($x>$y){
			$x-=$y;
		}
		else{
			$y-=$x;
		}
	}
	return $x;	
};

while (true){
print "\nEnter the first number: ";
chomp ($a = <>);

if (!$a){exit};

print "\nEnter the second number: ";
chomp ($b = <>);

print "\n";

$z= &gcf($a,$b);

printf ("\n\nThe greatest common factor of %d and %d is %d.\n", $a, $b, $z);

}

