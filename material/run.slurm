#! /bin/bash
#SBATCH --account=p_masi_gpu
#SBATCH --partition=maxwell
#SBATCH --gres=gpu:2
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=40G
#SBATCH --time=120:00:00
#SBATCH --output=/scratch/yaoy4/log/test-1echo-norandom.log

setpkgs -a tensorflow_0.12
source activate FCN
cd /scratch/yaoy4/BodySegmentation 
python run.py norandom test1
