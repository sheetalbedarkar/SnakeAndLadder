#!/bin/bash -x
echo "================== Welcome to Snake Ladder Game ==================="

WINNING_POSITION=100;

playerPosition=0;
snake=1;
ladder=2;
noPlay=0;

function die()
{
   echo $(($((RANDOM %6))+1))
}

function	playerMove()
{
   dieNo=$(die )
   case $((RANDOM %3)) in
      $snake)
               playerPosition=$(($playerPosition-$dieNo))
               ;;
      $ladder)
               playerPosition=$(($playerPosition+$dieNo))
               ;;
      $noPlay)               
               ;;
   esac
}

while (( $playerPosition <= $WINNING_POSITION ))
do
		if (($playerPosition < 0 ))
		then
			playerPosition=0
		fi
		playerMove
done
