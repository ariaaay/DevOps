#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=2:00:00
#SBATCH --mem=10G
#SBATCH --gres=gpu:1
#SBATCH --output=caffe_3_test_latest_output

. activate caffe-3
. ~/DevOps/env_scripts/add_cudnn_v6.sh
. ~/DevOps/env_scripts/add_cuda_lib.sh
. ~/DevOps/env_scripts/add_conda_env_lib.sh
. ~/DevOps/env_scripts/add_openblas.sh
. ~/DevOps/env_scripts/add_nccl.sh
cd ~/software/caffe-3-latest
make runtest
