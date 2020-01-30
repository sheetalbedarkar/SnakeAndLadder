#!/bin/bash -x
echo "================== Welcome to Snake Ladder Game ==================="
playerPosition=0;

function die()
{
   echo $(($((RANDOM %6))+1))
}
die

