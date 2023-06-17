import numpy as np
import cv2
import os
os.environ["OPENCV_IO_ENABLE_OPENEXR"]="1"

blender = cv2.imread('./0000.exr', cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)
mitsuba = cv2.imread('./interpolate_gray_bitmap_factor.exr', cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

err = cv2.absdiff(blender, mitsuba)

cv2.imwrite('./error.exr', err)
