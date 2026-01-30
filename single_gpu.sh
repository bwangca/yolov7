#!/bin/bash
max=250
for (( i=0; i < $max; ++i ))
do
	sleep 60
	python train.py --workers 8 --device 0 --batch-size 32 --data data/datasetv1.yaml --img 640 640 --cfg cfg/training/yolov7.yaml --weights 'yolov7_training.pt' --name datasetv1 --hyp data/hyp.scratch.custom.yaml --resume
done
