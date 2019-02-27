while ps -p 31601
do 
  sleep 60
done

fastq-dump SRR1916152.sra
fastq-dump SRR1916153.sra
fastq-dump SRR1916154.sra
fastq-dump SRR1916155.sra
fastq-dump SRR1916156.sra



