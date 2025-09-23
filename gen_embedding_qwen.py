import argparse
import json
import pickle
import numpy as np
from tqdm import trange
from sentence_transformers import SentenceTransformer
import torch

def get_arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--dataset",
        default='TREC',
        type=str,
        # required=True,
        help="The input data dir. Should contain the cached passage and query files",
    )
    parser.add_argument(
        "--type",
        default='proc_dev_data',
        type=str,
        help="The input data file type (e.g. proc_dev_data.json)",
    )
    parser.add_argument(
        "--batch_size",
        default=64,
        type=int,
        help="Batch size for encoding",
    )
    args = parser.parse_args()
    return args


def main():
    args = get_arguments()
    text, label = [], []

    with open(f"{args.dataset}/{args.type}.json", "r") as f:
        for line in f:
            data = json.loads(line)
            text.append(data["text"])
            label.append(data["_id"])

    print(f"Loaded {len(text)} samples.")

    # Sentence-Transformers 模型
    model_name = "Qwen/Qwen3-Embedding-4B"
    model = SentenceTransformer(model_name, device="cuda" if torch.cuda.is_available() else "cpu")

    embeddings = []
    num_iter = (len(text) + args.batch_size - 1) // args.batch_size

    for i in trange(num_iter):
        batch_texts = text[i * args.batch_size:(i + 1) * args.batch_size]
        batch_embeddings = model.encode(batch_texts, batch_size=args.batch_size, show_progress_bar=False)
        embeddings.append(batch_embeddings)

    embeddings = np.concatenate(embeddings, axis=0)
    print("Embedding shape:", embeddings.shape)

    with open(f"{args.dataset}/embedding_qwen_{args.type}.pkl", "wb") as handle:
        pickle.dump(embeddings, handle, protocol=4)


if __name__ == "__main__":
    main()
