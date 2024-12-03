## Connect to compute machines
salloc
module load miniconda
source activate my-phg
conda activate phgv2-conda

## Preprocessing data
phg prepare-assemblies --keyfile phg-wheat/keyfile --output-dir phg-wheat/updated_assemblies --threads 5

## Build VCF data
sbatch phg-wheat/script.sh
phg create-ranges --reference-file phg-wheat/updated_assemblies/iwgsc_refseqv2.1_assembly_short.fa --gff phg-wheat/updated_assemblies/Triticum_aestivum_refseqv2.IWGSC_RefSeq_v2.1.58.chr.gff3 --boundary gene --pad 500 --range-min-size 500 -o phg-wheat/bed/file.bed


