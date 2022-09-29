#!/usr/bin/python
import cv2
import numpy as np

# Only for the threshold display
from matplotlib import pyplot as plt

count = 0
#for x in range(82):
    
# The Image to be used
#image = 'test_photo.png'
#image = 'frame6_cam1.png'
# test = "before.png"
# photos = ["test_5_photo_5087", "test_5_photo_5088", "test_5_photo_5089", "test_5_photo_5090", "test_5_photo_5091", "test_5_photo_5092",
#             "test_5_photo_5093", "test_5_photo_5094", "test_5_photo_5095", "test_5_photo_5096", "test_5_photo_5097", "test_5_photo_5098",
#             "test_5_photo_5099", "test_5_photo_5100", "test_5_photo_5100", "test_5_photo_5101", "test_5_photo_5102", "test_5_photo_5103",
#             "test_5_photo_5104", "test_5_photo_5105", "test_5_photo_5106", "test_5_photo_5107", "test_5_photo_5108", "test_5_photo_5109",
#             "test_5_photo_5110", "test_5_photo_5111", "test_5_photo_5112", "test_5_photo_5113", "test_5_photo_5114", "test_5_photo_5115",
#             "test_5_photo_5116", "test_5_photo_5117", "test_5_photo_5118", "test_5_photo_5119", "test_5_photo_5120", "test_5_photo_5121",
#             "test_5_photo_5122", "test_5_photo_5123", "test_5_photo_5124", "test_5_photo_5125", "test_5_photo_5126", "test_5_photo_5127",
#             "test_5_photo_5128", "test_5_photo_5129", "test_5_photo_5130", "test_5_photo_5131", "test_5_photo_5132", "test_5_photo_5133",
#             "test_5_photo_5134", "test_5_photo_5135", "test_5_photo_5136", "test_5_photo_5137", "test_5_photo_5138", "test_5_photo_5139",
#             "test_5_photo_5140", "test_5_photo_5141", "test_5_photo_5142", "test_5_photo_5143", "test_5_photo_5144", "test_5_photo_5145",
#             "test_5_photo_5146", "test_5_photo_5147", "test_5_photo_5148", "test_5_photo_5149", "test_5_photo_5150", "test_5_photo_5151", 
#             "test_5_photo_5152", "test_5_photo_5153", "test_5_photo_5154", "test_5_photo_5155", "test_5_photo_5156", "test_5_photo_5157",
#             "test_5_photo_5158", "test_5_photo_5159", "test_5_photo_5160", "test_5_photo_5161", "test_5_photo_5162", "test_5_photo_5163",
#             "test_5_photo_5164", "test_5_photo_5165", "test_5_photo_5166", "test_5_photo_5167", "test_5_photo_5168", "test_5_photo_5169"]


# for x in photos:

#     image = "test5/" + str(x) + ".png" #'before.png'
#     #image = 'before.png'
#     print(image)
#     # Finding the average greyscale value
#     image_bgr = cv2.imread(image, cv2.IMREAD_GRAYSCALE)
#     #print(image_bgr)
#     # Calculate the mean of each channel
#     channels = cv2.mean(image_bgr)
#     # Type Float
#     thresh = channels[0]/2
#     #print (thresh)

#     # Displaying the threshold value

#     img = cv2.imread(image)
#     #img = cv2.medianBlur(img,5)

#     # If below then black else white 
#     ret,th1 = cv2.threshold(img,1,255,cv2.THRESH_BINARY_INV)

#     number = count + 5086
#     new_name = str(number) + ".png"
#     #print(new_name)
    
#     cv2.imwrite(new_name,th1)
#     #cv2.imwrite("savedImage.png",th1)
#     count = count + 1
#     # titles = ['Original Image', 'Global Thresholding']
#     # images = [img, th1]

#     # for i in range(2):
#     #     plt.subplot(2,2,i+1),plt.imshow(images[i],'gray')
#     #     plt.title(titles[i])
#     #     plt.xticks([]),plt.yticks([])

#     # # Shows single image on its' own
#     # '''
#     # plt.imshow(images[1], 'gray')
#     # plt.xticks([]),plt.yticks([])
#     # '''
#     # plt.show()


for x in range(453):

    image = "manualPhotoCollection/test_depth_image_" + str(x) + ".png" #'before.png'
    #image = 'before.png'
    print(image)
    # Finding the average greyscale value
    image_bgr = cv2.imread(image, cv2.IMREAD_GRAYSCALE)
    #print(image_bgr)
    # Calculate the mean of each channel
    channels = cv2.mean(image_bgr)
    # Type Float
    thresh = channels[0]/2
    #print (thresh)

    # Displaying the threshold value

    img = cv2.imread(image)
    #img = cv2.medianBlur(img,5)

    # If below then black else white 
    #ret,th1 = cv2.threshold(img,2,255,cv2.THRESH_BINARY_INV)
    ret,th1 = cv2.threshold(img,2,29,cv2.THRESH_BINARY_INV)

    #number = count + 5086
    new_name = "newPhotos/" + str(count) + ".png"
    #print(new_name)
    
    cv2.imwrite(new_name,th1)
    #cv2.imwrite("savedImage.png",th1)
    count = count + 1


# image = 'before.png'
# #image = 'before.png'
# print(image)
# # Finding the average greyscale value
# image_bgr = cv2.imread(image, cv2.IMREAD_GRAYSCALE)
# #print(image_bgr)
# # Calculate the mean of each channel
# channels = cv2.mean(image_bgr)
# # Type Float
# thresh = channels[0]/2
# #print (thresh)

# # Displaying the threshold value

# img = cv2.imread(image)
# #img = cv2.medianBlur(img,3)

# # If below then black else white 
# ret,th1 = cv2.threshold(img,6,255,cv2.THRESH_BINARY_INV)

# #number = count + 5086
# #new_name = str(number) + ".png"
# #print(new_name)

# #cv2.imwrite(new_name,th1)
# cv2.imwrite("savedImage.png",th1)
# #count = count + 1
# # titles = ['Original Image', 'Global Thresholding']
# # images = [img, th1]

# # for i in range(2):
# #     plt.subplot(2,2,i+1),plt.imshow(images[i],'gray')
# #     plt.title(titles[i])
# #     plt.xticks([]),plt.yticks([])

# # # Shows single image on its' own
# # '''
# # plt.imshow(images[1], 'gray')
# # plt.xticks([]),plt.yticks([])
# # '''
# # plt.show()