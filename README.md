# Introduction to Karel the Robot

An overview of how to use Karel the Robot in C++.

## What is Karel the Robot?  

Karel the Robot is a gentle introductory programming language created by [Dr. Richard Pattis](https://www.ics.uci.edu/~pattis/) in [*Karel the Robot: A Gentle Introduction to The Art of Programming*](https://www.google.com/books/edition/_/ghcZAQAAIAAJ?hl=en&gbpv=1) and implemented in C++ with his permission. The Karel language emphasizes logic while hiding tricky syntax, allowing anyone to begin making exciting graphical programs with very little background.

Karel lives in a two-dimensional grid and has a position and an orientation (north, east, south or west). Each cell of the grid may contain one or more beepers, or no beepers at all. Karel has a bag of beepers (which may be empty). Cells may be separated by walls.

Karel has four actions: they can move forward, turn left, put down a beeper or pick up a beeper. In addition, Karel is able to check state of the area around themselves. Karel cannot move through walls or off the edge of the world.

{% next %}

## Setup

*You can follow this guide from your own machine, or try from [lab.cs50.io](https://lab.cs50.io/ILXL-guides/intro-to-karel). If you are not using CS50, you will see some markdown for cs50 using curly braces and percentage signs, which you can ignore.*

1. If you haven't used the command line before, start with the [command line treasure hunt](https://github.com/ILXL-guides/command-line-treasure-hunt/blob/master/README.md). This guide assumes some familiarity with terminal commands.

2. We'll need a reference to the ``Karel`` library:
```
git clone https://github.com/ILXL/cpputils
```

3. Now you can build Karel the Robot programs. We've provided a blank Karel program in ``main.cc``, and a ``Makefile`` that contains the build commands. Make sure you can build it and run it with:
```
make build
./main
```
  *CS50 Note: You do not need to edit the ``Makefile`` and can close that editor tab*

This should open a Karel's world in a window, which displays Karel in their grid with several walls and one beeper.

### Optional: Accessibility set-up

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

{% next %}

## Controlling Karel

Karel can move through the world using two actions: they can ``Move()`` forward or ``TurnLeft()``.

In ``main.cc`` you can edit the ``KarelProgram()`` function to get Karel to move around their world. Try it: edit your ``KarelProgram()`` function to look like this (don't forget the semicolon at the end of the line!):

```cpp
void KarelProgram() {
  Move();
}
```

Now see how this changes Karel by building and running again with:

```
make build
./main
```

Try adding a ``TurnLeft()``:
```cpp
void KarelProgram() {
  Move();
  TurnLeft();
}
```

Can you modify your Karel program to have Karel walk out the door of their house and stand on top of the beeper? Combine ``Move()`` and ``TurnLeft()`` commands until you have Karel in the right spot. If you need a hint you can look at the example below.

{% spoiler Example %}

```cpp
void KarelProgram() {
  Move();
  Move();
  // It takes three left turns to make a right.
  TurnLeft();
  TurnLeft();
  TurnLeft();
  Move();
  TurnLeft();
  Move();
  // Should be on the beeper now!
}
```

{% endspoiler %}

{% next %}
