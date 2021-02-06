## Assignment 2, CS 495/595 Web Security, Spring 2021

Due: 2021-02-18

Points available: 15

### Basics of HTML, JavaScript, and Node

* This is based on [assignment 0](https://web.stanford.edu/class/cs253/assign0) from Feross Aboukhadijeh's class.  Consult the instructions there for additional guidance if needed.

* I've also submitted a (partial) version of what your submission should look like; consult [Nelson/2](Nelson/2) if you are unsure what things should be named, what to upload, etc.  

### Using npm to download "workshops" about HTML, JavaScript, and Node

On your computer, use npm to globally ("-g") install these packages:

```
npm install -g learnyouhtml javascripting learnyounode
```

You can omit "-g" if you don't want to install them globally, but it's probably better to make them global.

### Set up directory "2"

```
mkdir 2
cd 2
mkdir html
mkdir javascript
mkdir node
cd html 
learnyouhtml
# do all the HTML excercises in the "html" directory; saving all related files in "html"
cd ../javascript
javascripting
# do all the JavaScript excercises in the "javascript" directory; saving all related files in "javascript"
cd ../node
learnyounode
# do all the Node excercises in the "node" directory; saving all related files in "node"
```

Each of the commands "learnyouhtml", "javascripting", and "learnyounode" will have you do a series of simple exercises to prove mastery of the particular task.  Each task will have you create a file, then you'll "verify" the file, and the workshop will check it.  If you're successful, it will mark that task as "[COMPLETED]".  Else, it will provide hints as to why it was unsuccessful and you re-verify after editing.  For example, to verify the HTML "lists" tasks, do:

```
cd html
learnyouhtml
vi my-list-demo.html # create the file with the desired <ul>, <ol>, <li>, etc. elements
learnyouhtml verify my-list-demo.html
learnyouhtml # to choose the next task
```

Similarly:

```
cd ../javascript
javascripting
vi introduction.js
javascripting verify introduction.js
javascripting # continue until complete
cd ../node
learnyounode
vi hello-world.js
learnyounode verify hello-world.js
learnyounode # continue until complete
```

### Submission

* Create a README.md that contains:
  * A description of the assignment, directories, files, etc.
  * Three screen shots, one each showing completion of learnyouhtml, javascripting, and learnyounode.
  * A link to a Youtube video showing you list the files in the directory and showing the end screen for each workshop.

Again, look at [Nelson/2](Nelson/2) for a template.

To upload to GitHub, do:

```
git add 2 # this will recursively add all the files in the directory
git commit -m "A2 submission" # or whatever mesg is appropriate
git push origin main
```

Then inspect in your fork on GitHub.  If all looks good, issue a PR to my repo.  

After the assignment is complete, you can optionally uinstall these packages with:

```
npm rm -g learnyouhtml javascripting learnyounode
```
