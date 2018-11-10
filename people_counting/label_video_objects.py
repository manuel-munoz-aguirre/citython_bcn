
# coding: utf-8

# In[1]:


import os
import sys
import argparse
import numpy as np
import coco
import utils
import model as modellib
from classes import get_class_names, InferenceConfig
from ast import literal_eval as make_tuple
import imageio
import visualize_labelmod
from contextlib import closing
#from videosequence import VideoSequence


# In[ ]:


# Creates a color layer and adds Gaussian noise.
# For each pixel, the same noise value is added to each channel
# to mitigate hue shfting.


def create_noisy_color(image, color):
    color_mask = np.full(shape=(image.shape[0], image.shape[1], 3),
                         fill_value=color)

    noise = np.random.normal(0, 25, (image.shape[0], image.shape[1]))
    noise = np.repeat(np.expand_dims(noise, axis=2), repeats=3, axis=2)
    mask_noise = np.clip(color_mask + noise, 0., 255.)
    return mask_noise


# Helper function to allow both RGB triplet + hex CL input

def string_to_rgb_triplet(triplet):

    if '#' in triplet:
        # http://stackoverflow.com/a/4296727
        triplet = triplet.lstrip('#')
        _NUMERALS = '0123456789abcdefABCDEF'
        _HEXDEC = {v: int(v, 16)
                   for v in (x + y for x in _NUMERALS for y in _NUMERALS)}
        return (_HEXDEC[triplet[0:2]], _HEXDEC[triplet[2:4]],
                _HEXDEC[triplet[4:6]])

    else:
        # https://stackoverflow.com/a/9763133
        triplet = make_tuple(triplet)
        return triplet


def person_blocker(args):
    
    # If the output path does not exist, create it
    if not os.path.exists(args.write_output):
        os.makedirs(args.write_output)
    
    # Required to load model, but otherwise unused
    ROOT_DIR = os.getcwd()
    COCO_MODEL_PATH = args.model or os.path.join(ROOT_DIR, "mask_rcnn_coco.h5")

    MODEL_DIR = os.path.join(ROOT_DIR, "logs")  # Required to load model

    if not os.path.exists(COCO_MODEL_PATH):
        utils.download_trained_weights(COCO_MODEL_PATH)

    # Load model and config
    config = InferenceConfig()
    model = modellib.MaskRCNN(mode="inference",
                              model_dir=MODEL_DIR, config=config)
    model.load_weights(COCO_MODEL_PATH, by_name=True)

    # Start reading the frames
    reader = imageio.get_reader(args.image)
    vlen = len(reader)
    
    for i, image in enumerate(reader):
 
        # Output frame number
        print(str(i)+"/"+str(vlen))
        
        # Create masks for all objects
        results = model.detect([image], verbose=0)
        r = results[0]

        position_ids = [''.format(x)
                        for x in range(r['class_ids'].shape[0])]

        outstr = (args.write_output + "/labeled{:06d}.png").format(i)
        visualize_labelmod.display_instances(image, 
                                             r['rois'],
                                             r['masks'], 
                                             r['class_ids'],
                                             get_class_names(), 
                                             scores = r['scores'],
                                             selected_class = args.selected_class, 
                                             outname = outstr)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Script to label objects '
                    'in video using a neural network. This script will generate '
                    'the individual frames of the video that need to be stitched '
                    'manually using ffmpeg for example.')
    parser.add_argument('-i', '--image',  help='Video file name.',
                        required=False)
    parser.add_argument(
        '-m', '--model',  help='path to COCO model', default=None)
    parser.add_argument('-c',
                        '--color', nargs='?', default='(255, 255, 255)',
                        help='color of the "block"')
    parser.add_argument('-n',
                        '--names', dest='names',
                        action='store_true',
                        help='prints class names and exits.')
    parser.add_argument('-s', '--selected_class', help="If labels selected, which class to display",
                       required = False)
    parser.add_argument('-w', '--write_output', help='Output path for individual frames', default = None)
    parser.set_defaults(labeled=False, names=False, selected_class = None)
    args = parser.parse_args()

    if args.names:
        print(get_class_names())
        sys.exit()

    person_blocker(args)

