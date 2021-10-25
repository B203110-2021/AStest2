#Make sure we are in our home space
cd 
#Make a directory in my home directory called a
mkdir a
#Change directory into a
cd a
#Copy files
cp -r /localdisk/data/BPSM/AY21/ ./a 
cd ~/a/a/
mkdir fastqcread 

###read fq.gz with fastaqc and generate the quality report
cd ~/a/a/fastq/
fqfile=$(ls *.fq.gz)
for fqfile in *.fq.gz
do fastqc -o ~/a/a/fastqcread ~/a/a/fastq/$fqfile
echo $fqfile
done


###view the quality report and analysis
firefox 100k.C1-1-501_1_fastqc.html

###Build an bowtie2 index file, the name of index is "bt2-bases1"
bowtie2-build ~/a/a/Tcongo_genome/TriTrypDB-46_TcongolenseIL3000_2019_Genome.fasta.gz bt2-bases1


###align and generate samfile
cat ~/a/a/fastq/100k.fqfiles | {
while read ID Sample Replicate Time Treatment End1 End2
do
bowtie2 -p6 -x bt2-bases1 -1 $End1 -2 $End2 -S $ID.sam
done
}


###use samtools.view to convert the output to bam format
samfile=$(ls ~/a/a/fastq/*.sam)
for samfile in ~/a/a/fastq/*.sam
do samtools view -bS $samfile > "$samfile".bam
echo $samfile
done

###count：Bam files are sorted and indexed before they can be counted with multicove
###sort
bamsort=$(ls ~/a/a/fastq/*.bam)
for bamsort in ~/a/a/fastq/*.bam
do samtools sort $bamsort -o $bamsort.sort
echo $bamsort
done

###index
bamindex=$(ls *.sort)
for bamindex in ~/a/a/fastq/*.sort
do samtools index $bamindex
echo $bamindex
done

###use bedtools multicov to count, output file coucountfile.txt
bedtools multicov -bams *.bam.sort -bed ~/a/a/TriTrypDB-46_TcongolenseIL3000_2019.bed > coucountfile.table
bedtools multicov -bams *.bam.sort -bed ~/a/a/TriTrypDB-46_TcongolenseIL3000_2019.bed > coucountfile.txt

###Refer to the original experimental file and view the experimental grouping, sort 100k.fqfiles
###corresponding to each group of counting values one by one
vim 100k.fqfiles
sort 100k.fqfiles -k2,2 -k4,4 -k5,5

###count mean
cd ~/a/a/fastq/
awk 'BEGIN{FS="\t";}
{sum1=$6+$9+$12;sum2=$7+$10+$13;sum3=$15+$17+$19;sum4=$8+$11+$14;sum5=$16+$18+$20;sum6=$21+$24+$27;sum7=$22+$25+$28;sum8=$30+$32+34;sum9=$23+$26+$29;sum10=$31+$33+35;sum11=$36+$39+$42;sum12=$37+$40+$43;sum13=$45+$47+$49;
sum14=$38+$41+$44;sum15=$46+$48+$50;OFS="\t";print $1,$2,$3,$4,$5,sum1/3,sum2/3,sum3/3,sum4/3,sum5/3,sum6/3,sum7/3,sum8/3,sum9/3,sum10/3,sum11/3,sum12/3,sum13/3,sum14/3,sum15/3}' coucountfile.table > countmean.txt


###Clone1;Uninduced;time=0,24;24h foldchange
awk 'BEGIN{FS="\t";print"Clone1;Uninduced;time=0,24;24h foldchange"
}{if ($6 != 0) {
OFS="\t";print $4,$5, $8/$6}
}' countmean.txt > Clone1-Uninduced-time24h.txt
sort -t$'\t' -r -k3,3 Clone1-Uninduced-time24h.txt >Clone1-Uninduced-time24sort.txt

###Clone1;Uninduced;time=0,48;48h foldchange
awk 'BEGIN{FS="\t";print"Clone1;Uninduced;time=0,48;48h foldchange"
}{if ($6 != 0) {
OFS="\t";print $4,$5, $10/$6}
}' countmean.txt > Clone1-Uninduced-time48h.txt
sort -t$'\t' -r -k3,3 Clone1-Uninduced-time48h.txt >Clone1-Uninduced-time48sort.txt


###Group=Clone1,WT;Uninduced;time=48h;Clone1-WT foldchange
awk 'BEGIN{FS="\t";print"Group=Clone1,WT;Uninduced;time=48h;Clone1-WT foldchange"
}{if ($20 != 0) {
OFS="\t";print $4,$5, $10/$20}
}' countmean.txt > Uninduced-48h-GroupC1.txt
sort -t$'\t' -r -k3,3 Uninduced-48h-GroupC1.txt > Uninduced-48h-GroupC1sort.txt

###Group=Clone2,WT;Uninduced;time=48h;Clone2-WT foldchange
awk 'BEGIN{FS="\t";print"Group=Clone2,WT;Uninduced;time=48h;Clone2-WT foldchange"
}{if ($20 != 0) {
OFS="\t";print $4,$5, $15/$20}
}' countmean.txt > Uninduced-48h-GroupC2.txt
sort -t$'\t' -r -k3,3 Uninduced-48h-GroupC2.txt > Uninduced-48h-GroupC2sort.txt

###Group=Uninduced,Induced;Clone1;time=48h;Clone1-Induced foldchange
awk 'BEGIN{FS="\t";print"Group=Uninduced,Induced;Clone1;time=48h;Clone1-Induced foldchange"
}{if ($10 != 0) {
OFS="\t";print $4,$5, $9/$10}
}' countmean.txt > Clone1-48h-un-induced.txt
sort -t$'\t' -r -k3,3 Clone1-48h-un-induced.txt > Clone1-48h-un-inducedsort.txt
