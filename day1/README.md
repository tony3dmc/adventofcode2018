Advent of Code 2018 - Day 1
===========================

Today's chosen language: **Shell scripting**

I'm saving a pure bash solution for a later puzzle, this is just shell scripting and various standard linux utilities to solve the puzzles quickly.

## Part 1

The easiest puzzle of the advent, simply popping a zero in front of the input, and piping into a calculator

## Part 2

A bit of experimenting suggested I'd need to loop the input 143 times before I'd find my matched frequency, so I constructed a slow bash loop and populated some text files, while grepping for the current frequency. Took a couple minutes to run, but stopping the script once output started showing gave me the answer.

