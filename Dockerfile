ARG TENSORFLOW_VERSION

FROM tensorflow/tensorflow:$TENSORFLOW_VERSION

RUN python3 -m pip install tensorboard_plugin_profile
