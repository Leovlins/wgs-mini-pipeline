#!/bin/bash
set -euo pipefail

FASTQ1=$1
FASTQ2=$2
REFERENCE=$3
OUTDIR=$4

mkdir -p "$OUTDIR/qc" "$OUTDIR/align"

echo "Running FastQC..."
fastqc "$FASTQ1" "$FASTQ2" -o "$OUTDIR/qc"

echo "Running alignment with BWA..."
bwa mem "$REFERENCE" "$FASTQ1" "$FASTQ2" | \
  samtools view -Sb | \
  samtools sort -o "$OUTDIR/align/aligned.sorted.bam"

samtools index "$OUTDIR/align/aligned.sorted.bam"

echo "Running alignment QC..."
samtools flagstat "$OUTDIR/align/aligned.sorted.bam" > \
  "$OUTDIR/align/flagstat.txt"

echo "Pipeline finished successfully."
