dataset='breakfast'
method='triplet_12'
op='none'
gpu=2
xz

python main.py --op=$op --action='train' --dataset=$dataset --split='4' --gpu=$gpu --sample_rate=2 --method=$method
python main.py --op=$op --action='test' --dataset=$dataset --split='4' --gpu=3 --sample_rate=2 --method=$method
python main.py --op=$op --action='eval' --dataset=$dataset --split='4' --gpu=3 --sample_rate=2 --method=$method

