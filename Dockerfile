FROM jupyter/minimal-notebook
RUN pip install VTK matplotlib numpy scipy ipywidgets scikit-learn itkwidgets itk itk-texturefeatures itk-ultrasound
RUN python -m jupyter nbextension enable --py widgetsnbextension
RUN python -m jupyter nbextension enable --py --sys-prefix itkwidgets 
CMD start.sh jupyter lab
