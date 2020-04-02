"""
RenameAFile
https://rosettacode.org/wiki/Rename_a_file#Processing
Processing 3.4
2020-04 Alexandre Villares

Task:

Rename:
-    a file called `input.txt` into `output.txt` and
-    a directory called `docs` into `mydocs`.

This should be done twice: once "here", i.e. in the current working directory
and once in the filesystem root.

It can be assumed that the user has the rights to do so. (In unix-type
systems, only the user root would have sufficient permissions in the
filesystem root.)

Note that sketches will seldom have write permission to root files/folders
these root operations should be expected to fail by default.
"""

from java.io import File

def setup():
    # rename local file
    sketchfile = rename(sketchPath("input.txt"), sketchPath("output.txt"))
    # rename local folder
    sketchfold = rename(sketchPath("docs"), sketchPath("mydocs"))
    # rename root file (if permitted)
    rootfile = rename("input.txt", "output.txt")
    # rename root folder (if permitted)
    rootfold = rename("docs", "mydocs")

    # display results of four operations: True=success, False=fail
    println(str(sketchfile) + ' ' +
            str(sketchfold) + ' ' +
            str(rootfile) + ' ' +
            str(rootfold))
    # output:
    #     True True False False


def rename(oldname, newname):
    # File (or directory) with old name
    file = File(oldname)
    # File (or directory) with new name
    file2 = File(newname)
    # Rename file (or directory)
    success = file.renameTo(file2)
    return success
