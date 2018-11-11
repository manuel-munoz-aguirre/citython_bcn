# Citython Barcelona

## Content:

1. [Project description](#description)
2. [Deep Neural Network for behaviour identification](#deep)
3. [Data mining: creating maps](#mining)

## 1) <a id='description'></a> Project description
...

## 2) <a id='deep'></a> Deep Neural Network for behaviour identification

We have implemented a computer vision system to count the number of persons in a video. It is based on a deep learning framework, [Mask-RCNN](https://arxiv.org/abs/1703.06870), that has been developed to perform object segmentation, generating masks over detected instances. In order to generate information about people flow in a manner that is **privacy-preserving**, the identified people are masked, but at the same time we are able to keep the information about the number of persons. The particular implementation of *Mask-RCNN* we used is pretrained on the [MS COCO dataset](https://arxiv.org/abs/1405.03120). We have forked from [this repository](https://github.com/minimaxir/person-blocker) and made modifications to suit our task.

The current solution is meant to be a prototype - this means it is not optimized. It reads a video as a sequence of frames and performs the segmentation and count for each frame. When the process is finished, the frames have to be  stitched together using `ffmpeg`.

Required libraries:
- numpy
- imageio
- python 3.4+
- Tensorflow 1.3+
- Keras 2.0.8+
- skimage
- scipy
- Pillow
- cython
- h5py
- matplotlib

The person labelling and person masking functionality is currently separated in **two scripts**. Both of the output the counts on the upper left corner of the image. To run the person labelling script:

```{r}

python label_video_objects.py -i input/my_video.mp4  -c '(128, 128, 128)' -s "person" -w output/myvideo/

```
To run the person masking script:

```{r}

python mask_video.py -i input/my_video.mp4 -c '(128, 128, 128)' -o "person" -w output/myvideo/

```
To stitch the frames with `ffmpeg` use the following command:

```{r}

ffmpeg -start_number 0000 -i frame00%4d.jpg -c:v libx264 outfile.mp4

```
## 3) <a id='mining'></a> Data mining: creating maps

...
