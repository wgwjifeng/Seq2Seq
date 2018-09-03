#!/usr/bin/env bash
cd ../..
python3 train.py\
    --model_class pointer_generator\
    --batch_size 256\
    --hidden_units 400\
    --embedding_size 300\
    --attention_units 250\
    --encoder_depth 3\
    --decoder_depth 3\
    --encoder_max_time_steps 1500\
    --decoder_max_time_steps 30\
    --display_freq 5\
    --save_freq 2000\
    --valid_freq 400\
    --model_dir checkpoints/bytecup_pointer_generator\
    --model_name lcsts.ckpt\
    --source_vocabulary dataset/bytecup/word/vocabs.json\
    --target_vocabulary dataset/bytecup/word/vocabs.json\
    --source_train_data dataset/bytecup/word/contents.train.txt\
    --target_train_data dataset/bytecup/word/titles.train.txt\
    --source_valid_data dataset/bytecup/word/contents.eval.txt\
    --target_valid_data dataset/bytecup/word/titles.eval.txt\
    --encoder_vocab_size 30000\
    --decoder_vocab_size 30000\
    --cell_type gru\
    --max_epochs 100000\
    --extend_vocabs True