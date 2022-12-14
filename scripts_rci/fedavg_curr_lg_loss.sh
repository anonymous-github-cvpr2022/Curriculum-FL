#!/bin/sh

python3 ../main.py \
    --ntrials=3 \
    --seed=202207 \
    --rounds=100 \
    --num_users=100 \
    --frac=0.1 \
    --local_ep=10 \
    --local_bs=10 \
    --lr0=0.001 \
    --lr_sched_a=0.001 \
    --lr_sched_b=0.75 \
    --w_decay=5e-4 \
    --momentum=0.9 \
    --glob_momentum=0.0 \
    --model='resnet-9' \
    --dataset='food101' \
    --partition='homo' \
    --partition_difficulty_dist='rand' \
    --num_partitions=400 \
    --ordering='rand' \
    --pacing_f='step' \
    --pacing_a=1.0 \
    --pacing_b=1.0 \
    --client_ordering='rand' \
    --client_pacing_f='step' \
    --client_pacing_a=1.0 \
    --client_pacing_b=1.0 \
    --client_bs=10 \
    --exp_label='T20' \
    --datadir='../data/' \
    --logdir='../save_results/' \
    --ptdir='../pretrain/' \
    --train_expert='False' \
    --log_clientnet='False' \
    --data_score_sample_p=0.01 \
    --client_score_sample_n=1 \
    --log_filename='client100_rand_step_1.0a_1.0b_data_rand_step_1.0a_1.0b_gloss_p400' \
    --alg='fedavg_curr_lg_loss' \
    --beta=0.1 \
    --local_view=True  \
    --lg_scoring='G' \
    --noise=0 \
    --gpu=1 \
    --print_freq=10
