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
	dieValue=$(die)

		case $((RANDOM %3)) in
			$snake)
				playerPosition=$(($playerPosition-$dieValue))
					;;
			$ladder)
				playerPosition=$(($playerPosition+$dieValue))
					;;
			$noPlay)
					;;
		esac

		if (( $playerPosition < 0 ))
		then
			playerPosition=0;
		fi
	
		if (( $playerPosition>100 ))
		then
			playerPosition=$(($playerPosition-$dieValue))
		fi
}

while (( $playerPosition != $WINNING_POSITION ))
do
		playerMove
		echo $playerPosition
done
