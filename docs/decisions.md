# Pipeline design decisions

## QC-first approach
Quality control is performed before alignment to avoid propagating low-quality data.

## Aligner choice
BWA MEM was selected as a standard aligner for Illumina short-read data.

## Paired-end consistency
If paired-end reads are inconsistent, the pipeline must be stopped and investigated.

## Reproducibility
The pipeline is designed to run in a controlled environment defined via Conda.
