system("bash ./init-missing-lagda.sh");
add_cus_dep('lagda','tex',0,'lagda2tex');

sub lagda2tex {
    my $base = shift @_;
    return system("bash ./agda-from-toplevel.sh $base.lagda");
}

$pdflatex = "xelatex %O %S";
$pdf_mode = 5;
$dvi_mode = $postscript_mode = 0;