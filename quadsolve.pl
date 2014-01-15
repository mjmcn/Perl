# Michael McNamara
#
# Quad Solver
#
# Calculates all factors of a given number

sub solveQuad(){
	
	my ($a, $b, $c) = @_;
	my $nb = -1*$b;
	my $bb = $b **2;
	my $ac4 = 4*$a*$c;
	my $a2 = 2*$a;
	my $rad = $bb - $ac4;
	
	$div = chr(196);
	
	printf ("\n%dx%c + %dx + %d = 0\n\n", $a,253,$b, $c);
	
	$xpart = "x = ";
	$xpartsize = length $xpart;
	
	$top1 = sprintf ("%d %c %c ", $nb, 241, 251);
	$tsize1 = length $top1;
	
	$top2 = sprintf ("%d%c - 4 x %d x %d\n", $b, 253, $a, $c );
	$tsize2 = length $top2;
	
	$ttop = $tsize1 + $tsize2;
	
	$bottom = sprintf("2 x %d\n\n", $a);
	$bspace = $xpartsize + ($tsize1 +$tsize2)/2 - ((length $bottom)/2);
	
	$radspace = $xpartsize + $tsize1 - 1;

	($radline = sprintf("%${tsize2}s","_")) =~ tr/ /_/;
	($divline = sprintf("%${ttop}s", $div)) =~ s/ /$div/g;

	printf("%${radspace}s %s\n", '' , $radline);
	printf("%${xpartsize}s %s%s",'', $top1, $top2);
	printf ("x = %s\n", $divline);
	printf ("%${bspace}s%s", " ", $bottom);
	
	
	$top2 = sprintf ("%d - %d\n", $bb,  $ac4 );
	$tsize2 = length $top2;
	$ttop = $tsize1 + $tsize2;
	$bottom = sprintf("%d\n\n", $a2);
	$bspace = $xpartsize + ($tsize1 +$tsize2)/2 - ((length $bottom)/2);
	($radline = sprintf("%${tsize2}s","_")) =~ tr/ /_/;
	($divline = sprintf("%${ttop}s", $div)) =~ s/ /$div/g;
	
	printf("%${radspace}s %s\n", '' , $radline);
	printf("%${xpartsize}s %s%s",'', $top1, $top2);
	printf ("x = %s\n", $divline);
	printf ("%${bspace}s%s", " ", $bottom);
		
	$top2 = sprintf ("%d\n", $rad );
	$tsize2 = length $top2;
	$ttop = $tsize1 + $tsize2;
	$bspace = $xpartsize + ($tsize1 +$tsize2)/2;
	($radline = sprintf("%${tsize2}s","_")) =~ tr/ /_/;
	($divline = sprintf("%${ttop}s", $div)) =~ s/ /$div/g;
	
	printf("%${radspace}s %s\n", '' , $radline);
	printf("%${xpartsize}s %s%s",'', $top1, $top2);
	printf ("x = %s\n", $divline);
	printf ("%${bspace}s%s", " ", $bottom);
	
	
	# $px = ($nb/$a2) + (sqrt($rad) / $a2);
	# $nx = ($nb/$a2) - (sqrt($rad) / $a2);
	# printf ("\n%dx%c + %dx + %d\n", $a,253,$b, $c);
	# printf("x = %d or %d\n\n\n", $px, $nx);





}




while (true){
	printf ("\nAx%c + Bx + C\n", 253);
	print "\nEnter A: \n";
	chomp ($a = <>);
	if (!$a){exit};
	
	print "\nEnter B: \n";
	chomp ($b = <>);
	
	print "\nEnter C: \n";
	chomp ($c = <>);
	
	print "\n";

	&solveQuad ($a,$b,$c);
}