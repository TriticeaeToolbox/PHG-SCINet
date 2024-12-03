#!/usr/bin/bash
#SBATCH --mem=256G
#SBATCH --cpus-per-task=6
#SBATCH --time-min 64:00:00
phg align-assemblies --gff /project/genolabswheatphg/clay_phg/reference/Triticum_aestivum_refseqv2.IWGSC_RefSeq_v2.1.58.chr.gff3 --refere
nce-file /project/genolabswheatphg/clay_phg/reference/iwgsc_refseqv2.1_assembly.fa --assembly-file-list phg-wheat/assemblies_list.txt --o
utput-dir phg-wheat/maf_files --just-ref-prep
