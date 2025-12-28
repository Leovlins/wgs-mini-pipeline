# WGS Mini Pipeline — Nextflow DSL2

Pipeline WGS reprodutível implementado em Nextflow DSL2, cobrindo QC, alinhamento e chamada de variantes, com uso de containers (BioContainers) e boas práticas baseadas em nf-core.
Este projeto foi desenvolvido como um exercício acadêmico.

Work Flow:
FASTQ → FastQC → BWA-MEM → BAM → bcftools → VCF

---

## Estrutura do Project

wgs-mini-pipeline/
├── main.nf
├── nextflow.config
├── pipeline/
│   ├── index_reference.nf
│   ├── fastqc.nf
│   ├── align_reads.nf
│   └── variant_calling.nf
├── data/
├── reference/
└── results/



## Tecnologias
- Nextflow DSL2
- BWA
- samtools
- bcftools
- Docker (BioContainers)

