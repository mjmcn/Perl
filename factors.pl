# Michael McNamara
#
# Factors
#
# Calculates all factors of a given number


sub factor(){
	
	my $x=$_[0];
	my $count=0;
	my $factor=1;
	
	printf ("The factors of %d are:\n\n", $x);

	if ($x < 0){
	   $factor = -1;

	   for ($i=$factor; $i >= ($factor * (($x*$factor) ** (1/2))); $i+=$factor){
		
		if ($x % $i == 0){
			$div = $x/$i;
			$sum = $i+$div;
			$isq = $divsq = 0;
			
			if (sqrt($i*$factor) =~ /^\d+\z/){
				    $isq = 251;
			}
			if (sqrt($div) =~ /^\d+\z/){
				    $divsq = 251;
			}
			
			printf ("%5d x %3d%-2c%2c %d ", $i, $div, $divsq, 228 ,$sum);
			printf ("%-10c%-d%c x %3d%5c %d\n",32,$i*$factor, $isq, $div*$factor, 228 ,$sum*$factor);

			$count++;
		}
	   }
	}
	else{
	   
	   for ($i=$factor; $i <= ($factor * (($x*$factor) ** (1/2))); $i+=$factor){
		
		if ($x % $i == 0){
			$div = $x/$i;
			$sum = $i+$div;
			$isq = $divsq = 0;
			
			if (sqrt($i) =~ /^\d+\z/){
				    $isq = 251;
			}
			if (sqrt($div) =~ /^\d+\z/){
				    $divsq = 251;
			}
			
			printf ("%5d%1c x %3d%-2c%2c  %d\n", $i, $isq, $div, $divsq, 228 ,$sum);

			$count++;
		}
	   }
	}
	
	
	if ($count == 1) {
		printf("%d is a prime number.\n\n", $x)
	}
	
	
}

$b=1;
while (true){
	print "\nEnter number to factor: ";
	chomp ($a = <>);

	if (!$a){exit};

	&factor ($a);
}