# WGS Mini Pipeline — Nextflow DSL2

Pipeline **WGS (Whole Genome Sequencing)** reprodutível implementado em **Nextflow DSL2**, cobrindo as principais etapas de um fluxo de análise genômica: **controle de qualidade (QC), alinhamento e chamada de variantes**.  
O projeto utiliza **containers (BioContainers/Docker)** e segue boas práticas inspiradas em **nf-core**.

## Objetivo

Demonstrar a implementação de um pipeline genômico funcional e modular, adequado para ambientes de pesquisa e produção, com foco em:

- Reprodutibilidade
- Organização de código (DSL2)
- Boas práticas de bioinformática
- Uso de containers por processo

Work Flow:
FASTQ → FastQC → BWA-MEM → BAM + BAI → bcftools mpileup + call → VCF (.vcf.gz + .csi)

---

## Estrutura do Project
```text
wgs-mini-pipeline/
├── main.nf                  # Orquestração do pipeline (DSL2)
├── nextflow.config          # Parâmetros globais
├── pipeline/                # Módulos do pipeline
│   ├── index_reference.nf   # Indexação da referência
│   ├── fastqc.nf            # Controle de qualidade
│   ├── align_reads.nf       # Alinhamento com BWA
│   └── variant_calling.nf   # Chamada de variantes (bcftools)
├── data/                    # Dados FASTQ de entrada (exemplo)
├── reference/               # Genoma de referência
├── results/                 # Resultados do pipeline
└── README.md

```


## Tecnologias
- Nextflow DSL2
- BWA-MEM
- samtools
- bcftools
- FastQC
- Docker (BioContainers)
- Linux / Bash


---

## Como Executar

1 -  Ativar o ambiente
```text
conda activate wgs-mini-pipeline
```

2 -  Executar o Pipeline

```text
nextflow run main.nf
```
3 -  Reutilizar resultados intermediários

```text
nextflow run main.nf -resume
```

4 -  Parâmetros

```text
params {
    reference = "reference/ecoli.clean.fa"
}
```
