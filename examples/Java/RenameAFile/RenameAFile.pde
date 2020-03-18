/**
 * RenameAFile
 * https://rosettacode.org/wiki/Rename_a_file#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Task:
 * 
 * Rename:
 * -  a file called `input.txt` into `output.txt` and
 * -  a directory called `docs` into `mydocs`.
 * 
 * This should be done twice: once "here", i.e. in the current working directory
 * and once in the filesystem root.
 * 
 * It can be assumed that the user has the rights to do so. (In unix-type
 * systems, only the user root would have sufficient permissions in the
 * filesystem root.)
 * 
 * Note that sketches will seldom have write permission to root files/folders;
 * these root operations should be expected to fail by default.
 */

void setup() {
  // rename local file
  boolean sketchfile = rename(sketchPath("input.txt"), sketchPath("output.txt"));
  // rename local folder
  boolean sketchfold = rename(sketchPath("docs"), sketchPath("mydocs"));
  // rename root file (if permitted)
  boolean rootfile = rename("input.txt", "output.txt");
  // rename root folder (if permitted)
  boolean rootfold = rename("docs", "mydocs");

  // display results of four operations: true=success, false=fail
  println(sketchfile, sketchfold, rootfile, rootfold); 
  // output:
  //   true true false false
}

boolean rename(String oldname, String newname) {
  // File (or directory) with old name
  File file = new File(oldname);
  // File (or directory) with new name
  File file2 = new File(newname);
  // Rename file (or directory)
  boolean success = file.renameTo(file2);
  return success;
}
