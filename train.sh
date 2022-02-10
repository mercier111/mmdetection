#!/bin/bash
#SBATCH -o job.%j.out
#SBATCH -p compute
#SBATCH --qos=low
#SBATCH -J cascade
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1 
#SBATCH --mail-type=all
#SBATCH --mail-user=827174975@qq.com

config="/home/pya/mmdetection/try_cascade.py"
work_dir="out/seal_0210_cascade"

python -u tools/train.py $config  --work-dir $work_dir
