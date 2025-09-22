
#!/bin/bash

git pull



python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-3B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 5
python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-3B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 10
python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-3B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 20
python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-3B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 30


python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-7B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 5
python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-7B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 10
python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-7B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 20
python patron_sample.py --dataset explanation_dataset --target_model Qwen2.5-7B --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 30


python patron_sample.py --dataset explanation_dataset --target_model llama-3b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 5
python patron_sample.py --dataset explanation_dataset --target_model llama-3b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 10
python patron_sample.py --dataset explanation_dataset --target_model llama-3b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 20
python patron_sample.py --dataset explanation_dataset --target_model llama-3b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 30


python patron_sample.py --dataset explanation_dataset --target_model llama-8b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 5
python patron_sample.py --dataset explanation_dataset --target_model llama-8b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 10
python patron_sample.py --dataset explanation_dataset --target_model llama-8b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 20
python patron_sample.py --dataset explanation_dataset --target_model llama-8b --k 50 --rho 0.01 --gamma 0.5 --beta 0.5 --n_sample 30