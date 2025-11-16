
#!/bin/bash

git pull


#!/bin/bash

models=("Qwen3-8B" "Qwen3-4B")
samples=(5 10 20 30)

for model in "${models[@]}"; do
  for n in "${samples[@]}"; do
    python patron_sample.py \
      --dataset data_proc \
      --target_model "$model" \
      --k 50 \
      --rho 0.01 \
      --gamma 0.5 \
      --beta 0.5 \
      --n_sample "$n"
  done
done
