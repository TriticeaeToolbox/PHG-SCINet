#!/usr/bin/bash
#SBATCH --mem=256G
#SBATCH --cpus-per-task=6
#SBATCH -p medium
phg align-assemblies --gff /project/genolabswheatphg/clay_phg/reference/Triticum_aestivum_refseqv2.IWGSC_RefSeq_v2.1.58.chr.gff3 --refere
nce-file /project/genolabswheatphg/clay_phg/reference/iwgsc_refseqv2.1_assembly.fa --assembly-file /project/genolabswheatphg/clay_phg/fas
ta/Jagger.fa --reference-sam phg-wheat/maf_files/iwgsc_refseqv2.1_assembly.sam --reference-cds-fasta phg-wheat/maf_files/ref.cds.fasta --
ref-max-align-cov 1 --query-max-align-cov 1 --output-dir /project/genolabswheatphg/clay_phg/maf_files
