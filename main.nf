nextflow.enable.dsl=2

workflow {

    Channel.fromFilePairs('data/*_{1,2}.fastq', flat: true)
        .set { read_pairs }

    fastqc(read_pairs)
    align_reads(read_pairs, reference_ch)
}

Channel
	.fromPath('reference/ecoli.fa')
	.set { reference_ch }


process fastqc {

    tag "$sample_id"

    input:
    tuple val(sample_id), path(read1), path(read2)

    output:
    path "*.html"
    path "*.zip"

    script:
    """
    fastqc $read1 $read2
    """
}

process align_reads {

    tag "$sample_id"

    input:
    tuple val(sample_id), path(read1), path(read2)
    path reference

    output:
    path "aligned.sorted.bam"
    path "aligned.sorted.bam.bai"
    path "flagstat.txt"

    script:
    """
    bwa index $reference

    bwa mem $reference $read1 $read2 |
        samtools view -Sb |
        samtools sort -o aligned.sorted.bam

    samtools index aligned.sorted.bam
    samtools flagstat aligned.sorted.bam > flagstat.txt
    """
}

