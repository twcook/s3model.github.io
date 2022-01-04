Tutorial Setup
==============

Setup the prerequisites for the interactive sessions.

Prerequisites
-------------

To get started learning about S3Model using the Jupyter notebook exercises, you will first need to install Anaconda for your system. Be sure to use the version for **Python 3.7 or later**.

Anaconda now offers to install the *VS Code* editor. Unless you already have a preferred text editor, this is a good choice.

Open a terminal window and create a conda environment.

On Windows, you should use an Anaconda Prompt terminal from the Anaconda menu. On Mac/Linux use a terminal window.

Navigate to your home directory and issue this command:

* conda create -p S3MTraining jupyterlab

Activate the environment according to the instructions shown by Anaconda in the terminal window.

Change to the new directory:

* cd S3MTraining

Install the S3Model Python implementation with this command:

* pip install S3MPython

Test the installation by starting the Jupyter Notebooks server.

* jupyter notebook

Create a new notebook and enter the following code into the first cell:

* from S3MPython.dm import DMType

* help(DMType)

When you run this cell, you should see a display of the elements and their descriptions for the Data Model (DM) wrapper.

Select the Notebooks lesson for a link to get the notebooks and how to install them. The Notebooks lesson and the notebooks are part of the paid course.

**Congratulations!**

You are now ready to explore the lessons using Jupyter notebooks where you will interactively learn how to build data models using the **S3Model** approach.
