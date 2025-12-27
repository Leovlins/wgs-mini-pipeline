# Mini WGS Pipeline (Reproducible)

This repository contains a minimal yet fully functional Whole Genome Sequencing (WGS) pipeline,
designed to demonstrate best practices in bioinformatics workflow design, reproducibility,
and quality control.

The pipeline performs:
- Quality control of paired-end FASTQ files
- Alignment against a reference genome
- Post-alignment quality metrics

This project is intended for educational and portfolio purposes.

---

## Pipeline overview

Input FASTQ files are processed following a QC-first strategy to avoid propagating low-quality data.

# Mini WGS Pipeline (Reproducible)

This repository contains a minimal, reproducible Whole Genome Sequencing (WGS)
pipeline for Illumina paired-end data.

The goal of this project is to demonstrate good practices in bioinformatics
pipelines, including quality control, alignment and reproducibility.


## Project structure

wgs-mini-pipeline/
├── data/ # Raw FASTQ inputs (not versioned)
├── reference/ # Reference genome (not versioned)
├── pipeline/ # Pipeline scripts
├── results/ # Execution outputs (not versioned)
├── envs/ # Conda environment definition
├── docs/ # Design and technical decisions
└── README.md


## Requirements

- Linux environment
- Conda / Miniforge
- Tools (managed via Conda):
  - FastQC
  - BWA
  - Samtools

The exact software environment is defined in `envs/environment.yml`.

---

## Installation

Create and activate the Conda environment:

```bash
conda env create -f envs/environment.yml
conda activate wgs-mini-pipeline



## Requirements

- Linux environment
- Conda / Miniforge
- Tools (managed via Conda):
  - FastQC
  - BWA
  - Samtools

The exact software environment is defined in `envs/environment.yml`.

---

## Installation

Create and activate the Conda environment:

```bash
conda env create -f envs/environment.yml
conda activate wgs-mini-pipeline
