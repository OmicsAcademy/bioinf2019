hisat2 --new-summary --summary-file EV_3.log -x ../../../data/reference/yeast_ref -U ../../../data/SRR1916152_trimmed.fq |samtools view -bS - | samtools sort - -o EV_3.srt.bam
hisat2 --new-summary --summary-file EV_4.log -x ../../../data/reference/yeast_ref -U ../../../data/SRR1916153_trimmed.fq |samtools view -bS - | samtools sort - -o EV_4.srt.bam
hisat2 --new-summary --summary-file DNMT3B_2.log -x ../../../data/reference/yeast_ref -U ../../../data/SRR1916154_trimmed.fq |samtools view -bS - | samtools sort - -o DNMT3B_2.srt.bam
hisat2 --new-summary --summary-file DNMT3B_3.log -x ../../../data/reference/yeast_ref -U ../../../data/SRR1916155_trimmed.fq |samtools view -bS - | samtools sort - -o DNMT3B_3.srt.bam
hisat2 --new-summary --summary-file DNMT3B_4.log -x ../../../data/reference/yeast_ref -U ../../../data/SRR1916156_trimmed.fq |samtools view -bS - | samtools sort - -o DNMT3B_4.srt.bam
