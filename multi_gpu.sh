#!/bin/bash
max=300
for (( i=0; i < $max; ++i ))
do
	sleep 60
	python -m torch.distributed.launch --nproc_per_node 2 --master_port 9527 train.py --workers 8 --device 0,1 --sync-bn --batch-size 32 --data data/datasetv1.yaml --img 640 640 --cfg cfg/training/yolov7.yaml --weights 'yolov7_training.pt' --name datasetv1 --hyp data/hyp.scratch.custom.yaml --resume
done
