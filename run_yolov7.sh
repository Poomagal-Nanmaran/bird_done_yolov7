image="poomagal2588/yolov7_env"
container="yolov7"
src="/home/poomagal/kaggle/bird_drone/Dataset"
w="/home/poomagal/kaggle/bird_drone/src"
docker stop $container
docker rm $container
docker run --gpus all\
    -it \
    -v $src:/workspace/yolov7/Dataset \
    -v $w:/workspace/src \
    --name $container \
    -w /workspace/src/ \
    --network host \
    --entrypoint "/bin/bash" \
    $image 
    # \
    # -c 'bash "run_zmq_pose_classifier.sh" '