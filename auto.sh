intersectBed -a /home/sutripa/subhadeep/GENCODE_annotations/final/tmp_merged_d10_up10_down10 -b ../wgEncodeBroadHistoneGm12878H2azStdAln.bed -wa -wb | cut -f 4,14 > H2az_trans_Gm12878
intersectBed -a /home/sutripa/subhadeep/GENCODE_annotations/final/tmp_merged_d10_up10_down10 -b ../wgEncodeBroadHistoneHsmmH2azStdAln.bed -wa -wb | cut -f 4,14 > H2az_trans_Hsmm
intersectBed -a /home/sutripa/subhadeep/GENCODE_annotations/final/tmp_merged_d10_up10_down10 -b ../wgEncodeBroadHistoneOsteoblH2azStdAln.bed -wa -wb | cut -f 4,14 > H2az_trans_Osteobl
intersectBed -a /home/sutripa/subhadeep/GENCODE_annotations/final/tmp_merged_d10_up10_down10 -b ../wgEncodeBroadHistoneHepg2H2azStdAln.bed -wa -wb | cut -f 4,14 > H2az_trans_Hepg2
intersectBed -a /home/sutripa/subhadeep/GENCODE_annotations/final/tmp_merged_d10_up10_down10 -b ../wgEncodeBroadHistoneK562H2azStdAln.bed -wa -wb | cut -f 4,14 > H2az_trans_K562
