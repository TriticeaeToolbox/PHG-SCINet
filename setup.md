Access - http://ceres-ood.scinet.usda.gov/ using USDA VPN

module load miniconda

conda install conda-forge::openjdk

conda ceate —name my-phg
source activate my-phg

curl -s https://api.github.com/repos/maize-genetics/phg_v2/releases/latest \
| awk -F': ' '/browser_download_url/ && /\.tar/ {gsub(/"/, "", $(NF)); system("curl -LO " $(NF))}'

## Setup conda environment
./phg setup-environment

conda activate phgv2-conda

## Initialize TileDB DataSets
./phg initdb --db-path /path/to/dbs


