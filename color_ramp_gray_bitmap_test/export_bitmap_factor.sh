#!/bin/bash

blender -b ./test_inter_bitmap.blend -o ./ -F OPEN_EXR -f 0
echo "Finish Blender rendering"

~/Desktop/mitsuba3/build/mitsuba -o ./interpolate_gray_bitmap_factor.exr -m cuda_ad_rgb ./test.xml
echo "Finish Mitsuba rendering"

python ./compare_bitmap.py
echo "generate error map"
