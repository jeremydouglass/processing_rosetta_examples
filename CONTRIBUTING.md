# Contributing Processing examples to the RosettaCode set

The project welcomes new submissions -- whether you found a task entry already on the Rosetta Code wiki to add, or whether you created the new entry yourself and now want it add.

> NOTE: This is an example set for Processing (PDE) based on Processing tasks drawn from the Rosetta Code wiki. All submissions to Rosetta Code and to this example set are licensed as open documentation ("copyleft") under the current [LICENSE.md](LICENSE.md). If you are the author of the code and submit to Rosetta Code and/or here, you may of course also make your code available under whatever additional licenses you choose (e.g. the Unlicense, commercial licenses, et cetera).

For community discussions of contributing, see:

-  https://discourse.processing.org/t/processing-on-rosetta-code-weekly-topics/5980

Several options for contributing are listed below.


### Find existing tasks

To identify an existing Processing task already on the Rosetta Code wiki that is not yet part of this example set:

1. on the Rosetta Code wiki, browse [Processing tasks](https://rosettacode.org/wiki/Category:Processing) or [Python mode tasks](https://rosettacode.org/wiki/Category:Processing_Python_mode). 
   If you find a task that is not listed in this repos `examples` folder:
2. [create a new issue](https://github.com/jeremydouglass/rosetta_examples_p5/issues) named for that task


### Contribute a new task to the Rosetta Code wiki

1. on the Rosetta Code wiki, browse [Tasks not implemented in Processing](https://rosettacode.org/wiki/Reports:Tasks_not_implemented_in_Processing) or [Tasks not implemented in Python mode](https://rosettacode.org/wiki/Reports:Tasks_not_implemented_in_Processing_Python_mode).
2. select a task to add
3. edit that page (full page edit)
4. add a Processing section -- alphabetically using header markup
5. add a code block with your example sketch code, wrapping the code block in `<lang>` tags. The first line of code begins *immediately* after the opening `<lang>` with no linebreak.

The result may look like this:

```
=={{header|Processing}}==
<lang processing>void draw(){
    background(0);
    ellipse(width/2, height/2, mouseX, mouseX);
    println(frameCount);
}
</lang>
```

Optionally, a single entry may contain plain text descriptions and multiple code blocks, if needed--for example, if providing two separate solutions to the same problem (simple and complex, or demonstrating two different approaches). Code may also be accompanied by example output, headed by {{out}} and wrapped in `<pre>` tags.

```
{{out}}
<pre>1
2
3
</pre>
```

Some examples seeking contributors include:

Some of missing examples with tasks on Rosetta Code are right up Processing’s
alley – for example, animation:

-  https://rosettacode.org/wiki/Animate_a_pendulum
-  https://rosettacode.org/wiki/Galton_box_animation
-  https://rosettacode.org/wiki/Spinning_rod_animation/Text

... Conway’s game of life and the Sierpinski triangle:

-  https://rosettacode.org/wiki/Conway's_Game_of_Life
-  https://rosettacode.org/wiki/Sierpinski_triangle/Graphical 1

... and games of varying complexity:

-  https://rosettacode.org/wiki/Go_Fish
-  https://rosettacode.org/wiki/15_Puzzle_Game
-  https://rosettacode.org/wiki/2048


### Turn tasks into sketches

Once submitted as an issue, a task must be turned into working Processing sketch and added to the example set.

1. In Processing, create a new sketch based on the task name, using
   Processing / Java naming conventions. For example:

   -  Substring --> Substring
   -  Anti-primes --> AntiPrimes
   -  Binary search --> BinarySearch
   -  100 doors --> OneHundredDoors

   The resulting folder name and .pde file name must match.


2. Add the sketch code, run it and test that it works
3. Add a comment header with the name of the task, a link to the Rosetta Code
   page, and the basic task details taken from the wiki page header.
   For exampe:

```
/**
 * 100 Doors
 * http://rosettacode.org/wiki/100_doors#Processing
 *
 * There are 100 doors in a row that are all initially closed.
 * You make 100 passes by the doors.
 *
 * The first time through, visit every door and  toggle  the door 
 * (if the door is closed,  open it;   if it is open,  close it).
 * The second time, only visit every 2nd door (door #2, #4, #6, ...),
 * and toggle it.
 * The third time, visit every 3rd door (door #3, #6, #9, ...),
 * etc, until you only visit the 100th door.
 *
 * Task:
 * Answer the question:
 * What state are the doors in after the last pass?
 * Which are open, which are closed?
 */
```

#### Submit sketches to the example set

You may submit a sketch to the example set by:

-  Option 1: Post the sketch contents to the GitHub issue for that task.
-  Option 2: Fork the repo, commit the new sketch to the example folder,
   and open a pull request.
