###############################
The Ubuntu Dialogue Corpus v1.0
###############################

*****************
IMPORTANT NOTICE!
*****************

| This site contains the Ubuntu Dialogue Corpus v1.0.
| For the more recent Ubuntu Dialogue Corpus v2.0 (recommended), visit this
  `site <https://github.com/rkadlec/ubuntu-ranking-dataset-creator>`__.

-----

This site contains the dataset used in:

**Ryan Lowe, Nissan Pow, Iulian V. Serban and Joelle Pineau, "The Ubuntu
Dialogue Corpus: A Large Dataset for Research in Unstructure Multi-Turn
Dialogue Systems", SIGDial 2015.**

`arXiv:1506:08909 <http://arxiv.org/abs/1506.08909>`__

Raw dialogue files (two-way conversation, no pre-processing):

`Ubuntu dialogues (527M) <http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dialogs.tgz>`__

Files containing the data for the response classification task described in the
paper.  Data is split into train/validation/test sets. Each example is a
triple: *context, response, flag*. Standard (readable) CSV. This is very large,
and split into several files to facilitate downloading.

*  `ubuntu_dataset.tgz.aa (954M) <http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.aa>`__
*  `ubuntu_dataset.tgz.ab (954M) <http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ab>`__
*  `ubuntu_dataset.tgz.ac (954M) <http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ac>`__
*  `ubuntu_dataset.tgz.ad (954M) <http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ad>`__
*  `ubuntu_dataset.tgz.ae (690M) <http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ae>`__

The files can be joined by using the command ``cat ubuntu_dataset.tgz.a* | tar xz``

Same files in a single binarized CSV: `Ubuntu blobs (513M)
<http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_blobs.tgz>`__

The Ubuntu blobs are in the format required to train the neural architecture as
described in the paper using our code: `Ubuntu neural dialogue model
<https://github.com/npow/ubottu>`__

For further information, contact: `Dr. Joelle Pineau
<http://cs.mcgill.ca/~jpineau/contact.html>`__
