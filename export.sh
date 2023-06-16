#!/bin/bash

blender -b ./untitled.blend -o ./ -F OPEN_EXR -f 0
echo "Finish Blender rendering"

blender ./untitled.blend -b -P ../mitsuba-blender/mitsuba-blender/test.py
echo "Finish Blender exporting"

~/Desktop/mitsuba3/build/mitsuba -o ./test.exr -m cuda_ad_rgb ./test.xml
echo "Finish Mitsuba rendering"

python ./compare.py
echo "generate error map"
