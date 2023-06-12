CUDA_VISIBLE_DEVICES=0 python Train_cifarn.py --batch_size 256 --noise_type aggre --num_epochs 420 --lr 0.05 --cosine\
 --dataset cifar10 --num_class 10 --rho_range 0.5,0.5 --threshold 0.9 --tau 0.99 --pretrain_ep 10 --start_expand 150\
 --data_path data/cifar-10 --noise_path data/CIFAR-10_human.pt 

CUDA_VISIBLE_DEVICES=0 nohup python Train_cifarn.py --batch_size 256 --noise_type rand1 --num_epochs 420 --lr 0.05 --cosine\
 --dataset cifar10 --num_class 10 --rho_range 0.5,0.5 --threshold 0.9 --tau 0.99 --pretrain_ep 10 --start_expand 150\
 --data_path data/cifar-10 --noise_path ~/data/CIFAR-10_human.pt > c10_rand1.log &  

CUDA_VISIBLE_DEVICES=0 nohup python Train_cifarn.py --batch_size 256 --noise_type worst --num_epochs 420 --lr 0.05 --cosine\
 --dataset cifar10 --num_class 10 --rho_range 0.5,0.5 --threshold 0.9 --tau 0.99 --pretrain_ep 10 --start_expand 150\
 --data_path data/cifar-10 --noise_path data/CIFAR-10_human.pt > c10_worst.log &

CUDA_VISIBLE_DEVICES=1 nohup python Train_cifarn.py --batch_size 256 --noise_type noisy100 --num_epochs 420 --lr 0.05 --cosine\
 --dataset cifar100 --num_class 100 --rho_range 0.5,0.5 --threshold 0.9 --tau 0.95 --pretrain_ep 30 --start_expand 150\
 --data_path data/cifar-100 --noise_path data/CIFAR-100_human.pt > c100.log &  

# For evluation (after running the above shells)
#python learning.py --dataset cifar10 --noise_type aggre --val_ratio 0.1 

#python learning.py --dataset cifar10 --noise_type rand1 --val_ratio 0.1 

#python learning.py --dataset cifar10 --noise_type worst --val_ratio 0.1 

#python learning.py --dataset cifar100 --noise_type noisy100 --val_ratio 0.1 

# For detection (after running the above shells)
#python detection.py --dataset cifar10 --noise_type aggre --val_ratio 0.1 

#python detection.py --dataset cifar10 --noise_type rand1 --val_ratio 0.1 

#python detection.py --dataset cifar10 --noise_type worst --val_ratio 0.1 

#python detection.py --dataset cifar100 --noise_type noisy100 --val_ratio 0.1 
