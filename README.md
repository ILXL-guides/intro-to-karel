# Introduction to Karel the Robot

An overview of how to use Karel the Robot in C++.

## What is Karel the Robot?  

Show some pictures or a gif
Explain about walls, beepers, and actions
Explain about boolean maybe

## Setup

*You can follow this guide from your own machine, or try from [lab.cs50.io](https://lab.cs50.io/ILXL-guides/intro-to-karel). If you are not using CS50, you will see some markdown for cs50 using curly braces and percentage signs, which you can ignore.*

0. If you haven't used the command line before, start with the [command line treasure hunt](https://github.com/ILXL-guides/command-line-treasure-hunt/blob/master/README.md). This guide assumes some familiarity with terminal commands.

1. We'll need a reference to the ``graphics::Image`` library:

*TODO(katie): Update these instructions once Karel is in the main branch*

```
git clone https://github.com/ILXL/cpputils
cd cpputils
git checkout -b karel
git branch --set-upstream-to=origin/karel karel
git pull
cd ..
```

2. Now you can build Karel the Robot programs. We've provided a blank Karel program in ``main.cc``. Make sure you can build it and run it with:

```
make build
./main
```

This should open a Karel the Robot window showing Karel in a small world with several walls and one beeper.

### Accessibility set-up

#### Export to CSV
If you would like to view Karel's world in a spreadsheet instead of an image (which may be helpful for screen-reader users), add the following line to ``main.cc`` between ``LoadWorld`` and ``KarelProgram``:

```cpp
EnableCSVOutput();
```

This will generate a file, ``karel.csv``, which is a representation of Karel's world in spreadsheet form. Karel will wait for you to enter any character on the command line to take the next action, and each time it takes an action it will update ``karel.csv``. There is a key within the spreadsheet explaining how to interpret it.

#### Control animation rate

If you would like control over the rate at which Karel executes you can add the following line to ``main.cc`` between ``LoadWorld`` and ``KarelProgram``:

```cpp
EnablePromptBeforeAction();
```

This will cause Karel to wait for you to enter any character in the command line before taking the next action.
