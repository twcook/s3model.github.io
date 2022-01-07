.. _setup:

==============
Tutorial Setup
==============

* Install the prerequisites for the interactive sessions.

Prerequisites
-------------

To learn about the S3Model Reference Model using the Jupyter notebook exercises, the user will first need to install `Anaconda <https://www.anaconda.com/products/individual>`_ for their operating system. Be sure to use the version for **Python 3.7 or later**. Unless the user is an expert Python developer and can install the prerequisites manually, Anaconda is by far the best way to install the basic prerequisites for this tutorial. When installing Anaconda, the non-expert user should allow Anaconda to set the system Python interpreter during installation. 

Anaconda now offers to install the *VS Code* editor. Unless you already have a preferred text editor, this is a good choice.

Open a terminal window: 

On Windows, use an Anaconda Prompt terminal from the Anaconda menu. On Mac or Linux, use a terminal window. `Detailed instructions <https://docs.anaconda.com/anaconda/user-guide/getting-started/#open-navigator>`_. 

In the terminal window the prompt should start with **(base)**. Indicating that Anaconda has set the system wide Python environment.

Install the `Jupyterlab <https://jupyterlab.readthedocs.io/en/stable/getting_started/overview.html>`_  interface::

    conda install -c conda-forge jupyterlab

Navigate to a convienent directory for installing the tutorial and issue this command::

    conda create -p S3MTraining jupyterlab

The above command creates a `conda environment <https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/environments.html>`_ named **S3MTraining**. 

Activate the environment according to the instructions shown by Anaconda in the terminal window.

Change to the new directory::

    cd S3MTraining

Install the `S3Model Python <https://pypi.org/manage/project/S3MPython/releases/>`_ implementation with this command::

    pip install S3MPython

Test the installation by starting the Jupyter Notebooks server::

 jupyter notebook

Create a new notebook and enter the following code into the first cell::

 from S3MPython.dm import DMType

 help(DMType)

After running this cell, the elements and descriptions for the Data Model (DM) wrapper will be displayed.

Select the Notebooks link to get the notebooks and instructions on installing them.

**Congratulations!**

The user is now ready to explore the lessons using Jupyter notebooks, where the user will interactively learn how to build data models using the **S3Model** approach.
