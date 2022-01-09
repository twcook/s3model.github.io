.. _setup:

==============
Tutorial Setup
==============

* You **MUST** know how to find a terminal window on you computer.
* You **MUST** understand how to use a *ZIP* file extractor.
* You **MUST** know how to navigate directories/folders in your terminal.

*If you do not know how to do these things there are tutorials available for all operating systems on the Internet.*

.. note::

    We **RECOMMEND** opening external links from this page in a new tab on your browser. That way you can look for the S3M logo and return here to continue the tutorial steps.

Prerequisites
-------------

To learn about the S3Model Reference Model using the Jupyter notebook exercises, the user will first need to install `Anaconda <https://www.anaconda.com/products/individual>`_ for their operating system. Be sure to use the version for **Python 3.7 or later**. Unless the user is an expert Python developer and can install the prerequisites manually, Anaconda is by far the best way to install the basic prerequisites for this tutorial. When installing Anaconda, the non-expert user should allow Anaconda to set the system Python interpreter during installation. 

Open a terminal window: 

* On Windows, use an Anaconda Prompt terminal from the Anaconda menu. 
* On Mac or Linux, use a terminal window. `Detailed instructions <https://docs.anaconda.com/anaconda/user-guide/getting-started/#open-navigator>`_. 

In the terminal window the prompt should start with **(base)**. Indicating that Anaconda has set the  Python environment.

Install `Jupyterlab <https://jupyterlab.readthedocs.io/en/stable/getting_started/overview.html>`_  interface::

    conda install -c conda-forge jupyterlab

Navigate to a convienent directory in the terminal, for installing the tutorial.

.. warning::

    **REMEMBER** this directory/folder. We certainly don't recommend putting these files in the root directory. If you can't think of a better place then do this in the *Documents* folder. 


Issue this command in the terminal window::

    conda create -n S3MTraining jupyterlab


You will see a long list of *packages* to  be installed. A prompt will ask you to confirm installation. Respond with a *y* and then the *Enter* key.

The above command creates a `conda environment <https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/environments.html>`_ named **S3MTraining**. 

Activate the environment::

    conda activate S3MTraining   

Change to the new directory::

    cd S3MTraining

Install the `S3Model Python <https://pypi.org/manage/project/S3MPython/releases/>`_ implementation with this command::

    pip install S3MPython

When the installation is complete, the last line in the terminal should be::

    Successfully installed S3MPython-(version number) and a list of the other packages installed.


Test the installation by starting the Jupyter Notebooks server::

 jupyter notebook

This command should open a new tab in your default web browser (Firefox, Chrome, Edge, etc.)


Create a new notebook by clicking on the *New* button on the right side of the window. 

A menu will dropdown as shown here:

.. image:: _static/Jupyter_New_Notebook.png

From the menu select the *Python 3* option. This should open a new tab in your browser and the page should look like this:

.. image:: _static/Jupyter_New_Tab.png

and enter the following code into the first cell::

 from S3MPython.dm import DMType

 help(DMType)

It should look like this:

.. image:: _static/First_Cell.png

Now click on the *Run* button in the menu.

If all went well your window should have this display:

.. image:: _static/After_Run.png

The elements and descriptions for the Data Model (DM) wrapper will be displayed as shown above. Each model component has a help file that you can display in the same way. 

**Close this browser tab.**


Jupyter notebook examples
-------------------------

To download the examples go to the `Github repository <https://github.com/twcook/S3M_Python_Training_examples>`_.

Click on the green *Code* button on the right side of the page.

.. image:: _static/green_code.png

A dropdown menu will appear.

.. image:: _static/download_zip.png

Select the *Download Zip* link. Download this file to any convienent location.

Using your ZIP file extractor of choice:

* Open the *S3M_Python_Training_examples* folder.
* Extract the *examples* and *tests* folders into the *S3MTraining* folder created earlier.

The *S3MTraining* folder should look similar to:

.. image:: _static/extracted.png

In the original Jupyter Notebook tab: 

.. image:: _static/Jupyter_home.png

* select the *examples* folder. If you do not see the folder. There is a *Refresh* button next to the *New* button that you used earlier.

* in the *examples* folder, select the *00. Getting Started.ipynb* file. 

.. image:: _static/tutorial_start.png

Follow all instructions. 


**Congratulations!**

The user is now ready to explore the lessons using Jupyter notebooks, where the user will interactively learn how to build data models using the **S3Model** approach.

.. note::

    In case you accidentally close the terminal where you started the Jupyter server. You can resart it by:
    
     * Open a new terminal.
     * Navigate to the *S3MTraining* directory. 
     * Activate the environment with the command: *conda activate S3MTraining*
     * Start Jupyter with the command: *jupyter notebook*.
