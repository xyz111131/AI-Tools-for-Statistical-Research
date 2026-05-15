srun -p share --gres=gpu:1 --pty zsh
python3 -m venv .venv
source .venv/bin/activate

nvidia-smi
pip3 install torch torchvision
python -c "import torch; print(torch.cuda.is_available(), torch.cuda.get_device_name(0))"



srun -p dgx2 -w dgx2-1 --gres=gpu:1 --pty zsh