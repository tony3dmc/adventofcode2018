#!/bin/bash

(echo -n 0; cat input.txt  | xargs) | bc
