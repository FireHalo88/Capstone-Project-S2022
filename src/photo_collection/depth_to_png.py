#!/usr/bin/python
import cv2
import numpy as np

# Only for the threshold display
from matplotlib import pyplot as plt

# The Image to be used
#image = 'test_photo.png'
#image = 'frame6_cam1.png'
image = 'before.png'

# Finding the average greyscale value
image_bgr = cv2.imread(image, cv2.IMREAD_GRAYSCALE)
#print(image_bgr)
# Calculate the mean of each channel
channels = cv2.mean(image_bgr)
# Type Float
thresh = channels[0]/2
print (thresh)

# Displaying the threshold value

img = cv2.imread(image)
img = cv2.medianBlur(img,5)

# If below then black else white 
ret,th1 = cv2.threshold(img,6,255,cv2.THRESH_BINARY_INV)
cv2.imwrite("savedImage.png",th1)

titles = ['Original Image', 'Global Thresholding']
images = [img, th1]

for i in range(2):
    plt.subplot(2,2,i+1),plt.imshow(images[i],'gray')
    plt.title(titles[i])
    plt.xticks([]),plt.yticks([])

# Shows single image on its' own
'''
plt.imshow(images[1], 'gray')
plt.xticks([]),plt.yticks([])
'''
plt.show()