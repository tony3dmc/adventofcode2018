Advent of Code 2018 - Day 2
===========================

Today's chosen language: **Perl**

## Part 1

For part 1, I ran the input text through a couple of one-liners on the command line, and did a bit of visual inspection to confirm the counts.

```
cat input.txt | perl -lne '$_ = join "", sort split //; print if /(.)\1\1/'
```

This sorted the strings, then output the ones with three characters in a row. Rinse and repeat for the ones with two, taking these away. It turned out that ALL of my 3-char matches were also 2-char matches, so my checksum was a simple 250 * 20. 

Amusingly, I missed one of the matches, and when I put the wrong answer into AoC, it happened to match someone else's answer, and I got told off for suspected cheating!

## Part 2

See the solution file _part2.pl_ for a simple set of loops and a custom compare function, followed by visual inspection to remove the offending character.

