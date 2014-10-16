#!/bin/bash
dataDir="${PROJ_DIR}dl-image-enhance/data/uniform_set_100_xpro"
cpDir=${dataDir}/convnet_checkpoints/ConvNet__2014-10-14_21.10.10zyan3-server
cpName=4000.9

python imageEnhancer.py -f ${cpDir}/${cpName} --out-img-dir=${cpDir}_summary --label-layer=reglayer_Lab --gpu=1 --super-pixel-enhance=1 --num-proc=20 --fredo-image-processing=0 --do-enhance-image=1 --transform-vis=0
