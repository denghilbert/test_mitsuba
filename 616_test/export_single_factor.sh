#!/bin/bash

blender -b ./test_inter_blue_red.blend -o ./ -F OPEN_EXR -f 0
echo "Finish Blender rendering"


~/Desktop/mitsuba3/build/mitsuba -o ./interpolate_middle_red_blue.exr -m cuda_ad_rgb ./test_inter_blue_red.xml
echo "Finish Mitsuba rendering"

python ./compare_single.py
echo "generate error map"
