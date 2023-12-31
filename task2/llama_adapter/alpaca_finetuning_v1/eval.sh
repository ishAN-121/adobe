torchrun --nproc_per_node 1 eval.py \
    --model Llama7B_adapter \
    --llama_model_path llama/weights_7b/ \
    --data_path finetuning_modified_content.json \
    --adapter_layer 20 \
    --adapter_len 10 \
    --max_seq_len 360 \
    --batch_size 100 \
    --epochs 1 \
    --warmup_epochs 1 \
    --blr 9e-3 \
    --weight_decay 0.02 \
    --output_dir ./checkpoint/
