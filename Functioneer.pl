# Functioneer
#
# because im too lazy to do these by hand.


sub g(){
	$x=$_[0];
	
	return -1*$x**2-$x;
}

sub h(){
	$x=$_[0];
	
	return 3*$x+5+4*(&g($x));
}

sub f(){
	$x=$_[0];
	
	return -7*$x**2-5*$x+&h($x);
}

print &g(&f(1));



print "\n\n";