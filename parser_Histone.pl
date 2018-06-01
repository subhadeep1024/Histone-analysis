my %total_hash=();
%total_hash=create_hash_with_multiple_argument(@ARGV);
=i
foreach my $i(keys %total_hash)
{
        print "$i\n";
}
=cut
@list=`cat /home/sutripa/subhadeep/GENCODE_annotations/final/GENCODE_list`;
foreach $line(@list)
{
        chomp $line;
        print "$line\t";
        foreach $cell_line (@ARGV){
                chomp $cell_line;
                if(exists($total_hash{$cell_line}{$line})){
                        chomp($total_hash{$cell_line}{$line});
                        print "$total_hash{$cell_line}{$line}\t";
                }
                else{
                        print "0\t";
                }
        }
print "\n";
}
#print $total_hash{"K562"}{"ENSG00000224870.3-ENST00000576232.1"};
sub create_hash_with_multiple_argument
{
        my @arr=@_;
        my %my_hash=();
        foreach my $v(@arr)
        {
                my $file_name="H2az_trans_$v";
                open FH,$file_name or die "File does not exist $v";
                while(my $line =<FH>)
                {
                        my @var=split(/\t/,$line);
                        $my_hash{$v}{$var[0]}=$var[1];
                }
                close(FH);

        }
        return %my_hash;

}
