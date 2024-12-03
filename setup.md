module load miniconda

conda install conda-forge::openjdk

conda ceate —name phgv2-conda

conda activate phgv2-conda

curl -s https://api.github.com/repos/maize-genetics/phg_v2/releases/latest \
| awk -F': ' '/browser_download_url/ && /\.tar/ {gsub(/"/, "", $(NF)); system("curl -LO " $(NF))}'

## Setup conda environment
./phg setup-environment

## Initialize TileDB DataSets
./phg initdb --db-path /path/to/dbs


