# Brain-Tumor-Detector
Building a detection model using a convolutional neural network in Tensorflow & Keras.<br>
Used a brain MRI images data founded on Kaggle. You can find it [here](https://www.kaggle.com/navoneel/brain-mri-images-for-brain-tumor-detection).<br>

**About the data:**<br>
The dataset contains 2 folders: yes and no which contains 253 Brain MRI Images. The folder yes contains 155 Brain MRI Images that are tumorous and the folder no contains 98 Brain MRI Images that are non-tumorous.

# Getting Started



## Data Augmentation:

**Why did I use data augmentation?**

Since this is a small dataset, There wasn't enough examples to train the neural network. Also, data augmentation was useful in taclking the data imbalance issue in the data.<br>

Further explanations are found in the Data Augmentation notebook.

Before data augmentation, the dataset consisted of:<br>
155 positive and 98 negative examples, resulting in 253 example images.

After data augmentation, now the dataset consists of:<br>
1085 positive and 980 examples, resulting in 2065 example images.

**Note:** these 2065 examples contains also the 253 original images. They are found in folder named 'augmented data'.

## Data Preprocessing

For every image, the following preprocessing steps were applied:

1. Crop the part of the image that contains only the brain (which is the most important part of the image).
2. Resize the image to have a shape of (240, 240, 3)=(image_width, image_height, number of channels): because images in the dataset come in different sizes. So, all images should have the same shape to feed it as an input to the neural network.
3. Apply normalization: to scale pixel values to the range 0-1.

## Data Split:

The data was split in the following way:
1. 70% of the data for training.
2. 15% of the data for validation.
3. 15% of the data for testing.

# Neural Network Architecture

This is the architecture that I've built:

![Screenshot 2024-03-01 110328](https://github.com/ShyleshKumarS/Brain_Tumour_Detection/assets/146239672/00298487-4403-4733-b265-257121220a24)


**Understanding the architecture:**<br>
Each input x (image) has a shape of (240, 240, 3) and is fed into the neural network. And, it goes through the following layers:<br>

1. A Zero Padding layer with a pool size of (2, 2).
2. A convolutional layer with 32 filters, with a filter size of (7, 7) and a stride equal to 1.
3. A batch normalization layer to normalize pixel values to speed up computation.
4. A ReLU activation layer.
5. A Max Pooling layer with f=4 and s=4.
6. A Max Pooling layer with f=4 and s=4, same as before.
7. A flatten layer in order to flatten the 3-dimensional matrix into a one-dimensional vector.
8. A Dense (output unit) fully connected layer with one neuron with a sigmoid activation (since this is a binary classification task).




# Training the model
The model was trained for 24 epochs and these are the loss & accuracy plots:



![Screenshot 2024-03-01 110756](https://github.com/ShyleshKumarS/Brain_Tumour_Detection/assets/146239672/0e295faf-a332-4e7d-a0df-4ca9d81bf9ef)






![Screenshot 2024-03-01 110803](https://github.com/ShyleshKumarS/Brain_Tumour_Detection/assets/146239672/30e4756c-d951-4d08-b3ab-490e6686be32)


The best validation accuracy was achieved on the 23rd iteration.


**Performance table of the best model:**

| <!-- -->  | Validation set | Test set |
| --------- | -------------- | -------- |
| Accuracy  | 91%            | 89%      |
| F1 score  | 0.91           | 0.88     |




Contributes are welcome!
<br>Thank you!



