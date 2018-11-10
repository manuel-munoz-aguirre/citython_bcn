2018-11-10 19:51:01.987946: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.1 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 19:51:01.988274: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.2 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 19:51:01.988286: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX instructions, but these are available on your machine and could speed up CPU computations.
Using TensorFlow backend.
Traceback (most recent call last):
  File "label_video_objects.py", line 133, in <module>
    person_blocker(args)
  File "label_video_objects.py", line 104, in person_blocker
    outname = outstr)
  File "/nfs/users2/rg/ramador/Citython_2018/citython_bcn/people_counting/visualize_labelmod.py", line 95, in display_instances
    _, ax = plt.subplots(1, figsize=figsize)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/pyplot.py", line 1184, in subplots
    fig = figure(**fig_kw)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/pyplot.py", line 533, in figure
    **kwargs)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/backend_bases.py", line 161, in new_figure_manager
    return cls.new_figure_manager_given_figure(num, fig)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/backends/_backend_tk.py", line 1046, in new_figure_manager_given_figure
    window = Tk.Tk(className="matplotlib")
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/tkinter/__init__.py", line 1856, in __init__
    self.tk = _tkinter.create(screenName, baseName, className, interactive, wantobjects, useTk, sync, use)
_tkinter.TclError: no display name and no $DISPLAY environment variable
Using TensorFlow backend.
Traceback (most recent call last):
  File "label_video_objects.py", line 17, in <module>
    import visualize_labelmod
  File "/nfs/users2/rg/ramador/Citython_2018/citython_bcn/people_counting/visualize_labelmod.py", line 22, in <module>
    matplotlib.use('Agg')
NameError: name 'matplotlib' is not defined
2018-11-10 19:58:44.355689: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.1 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 19:58:44.355976: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.2 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 19:58:44.355987: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX instructions, but these are available on your machine and could speed up CPU computations.
Using TensorFlow backend.
/nfs/users2/rg/ramador/Citython_2018/citython_bcn/people_counting/visualize_labelmod.py:23: UserWarning: 
This call to matplotlib.use() has no effect because the backend has already
been chosen; matplotlib.use() must be called *before* pylab, matplotlib.pyplot,
or matplotlib.backends is imported for the first time.

The backend was *originally* set to 'TkAgg' by the following code:
  File "label_video_objects.py", line 17, in <module>
    import visualize_labelmod
  File "/nfs/users2/rg/ramador/Citython_2018/citython_bcn/people_counting/visualize_labelmod.py", line 15, in <module>
    import matplotlib.pyplot as plt
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/pyplot.py", line 71, in <module>
    from matplotlib.backends import pylab_setup
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/backends/__init__.py", line 16, in <module>
    line for line in traceback.format_stack()


  matplotlib.use('Agg')
Traceback (most recent call last):
  File "label_video_objects.py", line 133, in <module>
    person_blocker(args)
  File "label_video_objects.py", line 104, in person_blocker
    outname = outstr)
  File "/nfs/users2/rg/ramador/Citython_2018/citython_bcn/people_counting/visualize_labelmod.py", line 97, in display_instances
    _, ax = plt.subplots(1, figsize=figsize)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/pyplot.py", line 1184, in subplots
    fig = figure(**fig_kw)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/pyplot.py", line 533, in figure
    **kwargs)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/backend_bases.py", line 161, in new_figure_manager
    return cls.new_figure_manager_given_figure(num, fig)
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/site-packages/matplotlib/backends/_backend_tk.py", line 1046, in new_figure_manager_given_figure
    window = Tk.Tk(className="matplotlib")
  File "/users/rg/ramador/.conda/envs/Cython/lib/python3.4/tkinter/__init__.py", line 1856, in __init__
    self.tk = _tkinter.create(screenName, baseName, className, interactive, wantobjects, useTk, sync, use)
_tkinter.TclError: no display name and no $DISPLAY environment variable
2018-11-10 20:01:53.376489: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.1 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 20:01:53.376776: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.2 instructions, but these are available on your machine and could speed up CPU computations.
2018-11-10 20:01:53.376787: W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX instructions, but these are available on your machine and could speed up CPU computations.
