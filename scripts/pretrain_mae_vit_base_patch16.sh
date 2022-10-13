OUTPUT_DIR='exp/mae_pretrain_pretrain_mae_base_patch16_224_mask_ratio_75'
DATA_DIR='data/'

CUDA_VISIBLE_DEVICES=0,1 OMP_NUM_THREADS=1 python -m torch.distributed.launch --nproc_per_node=2 \
    main_pretrain.py \
    --model mae_vit_base_patch16 \
    --data_path ${DATA_DIR} \
    --output_dir ${OUTPUT_DIR} \
    --log_dir ${OUTPUT_DIR} \
    --batch_size 128 \
    --epochs 400 \
    --mask_ratio 0.75 \
    --norm_pix_loss
