#!/bin/bash


curl "https://pjreddie.com/media/files/yolov3.weights" --output flask_yolo/yolo_v3/yolov3.weights

sudo yum update -y
sudo yum install -y docker


sudo docker build -t custom_yolo:latest .

sudo docker run -d -p 80:80 custom_yolo:latest
