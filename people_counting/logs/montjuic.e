2018-11-10 20:18:15.280832: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.1 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 20:18:15.281116: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.2 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 20:18:15.281131: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX instructions, but these are available on your machine and could speed up CPU computations.
Using TensorFlow backend.
Traceback (most recent call last):
  File "label_video_objects.py", line 133, in <module>
    person_blocker(args)
  File "label_video_objects.py", line 81, in person_blocker
    reader = imageio.get_reader(args.image)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/imageio/core/functions.py", line 130, in get_reader
    request = Request(uri, "r" + mode, **kwargs)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/imageio/core/request.py", line 125, in __init__
    self._parse_uri(uri)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/imageio/core/request.py", line 273, in _parse_uri
    raise FileNotFoundError("No such file: '%s'" % fn)
FileNotFoundError: No such file: '/nfs/users2/rg/ramador/Citython_2018/citython_bcn/people_counting/input/montjuic30s.mp'
2018-11-10 20:20:24.200874: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.1 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 20:20:24.201113: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.2 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 20:20:24.201127: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX instructions, but these are available on your machine and could speed up CPU computations.
