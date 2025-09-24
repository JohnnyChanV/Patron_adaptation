
#!/bin/bash

git pull


#!/bin/bash

models=("Qwen2.5-3B" "Qwen2.5-7B" "Llama-3.2-3B" "Llama-3.1-8B")
samples=(5 10 20 30 100 200 300 400 500)

for model in "${models[@]}"; do
  for n in "${samples[@]}"; do
    python patron_sample.py \
      --dataset TREC \
      --target_model "$model" \
      --k 50 \
      --rho 0.01 \
      --gamma 0.5 \
      --beta 0.5 \
      --n_sample "$n"
  done
done
