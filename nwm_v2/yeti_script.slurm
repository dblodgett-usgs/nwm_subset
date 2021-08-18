#!/bin/bash

#SBATCH --job-name=get_nwc_data           
#SBATCH -n 1                                    
#SBATCH -p normal                                 
#SBATCH --account=geoint                   
#SBATCH --time=72:00:00                           
#SBATCH --mail-type=ALL                           
#SBATCH --mail-user=dblodgett@usgs.gov            
#SBATCH -o nwc_data-%j.out                           

module purge
module load R/3.6.1-gcc7.1.0
module load tools/nco-4.7.8-gnu

srun Rscript runner.R 6