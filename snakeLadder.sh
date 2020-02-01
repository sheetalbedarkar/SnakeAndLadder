#!/bin/bash  
echo "================== Welcome to Snake Ladder Game ==================="

WINNING_POSITION=100;
playerPosition=0;
firstPlayer=0
snake=1;
ladder=2;
noPlay=0;
count=0


declare -A playerRecord
function die()
{
   echo $(($((RANDOM %6))+1))
}
function condiationCheck
{
	position=$1

	if (( $position < 0 ))
	then
			position=0;
	fi
	if (( $position>100 ))
	then
        position=$(($position-$2))
	fi
	echo $position

}
function	playerMove()
{
	dieNo=$(die )
	((count++))
		playerPosition=0
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

		if (( $flag==0 ))
		then
			firstPlayer=$(($firstPlayer +$playerPosition))
			firstPlayer=$(condiationCheck $firstPlayer $dieNo)
			playerRecord[DieNo:"$dieNo"]="player 1:$firstPlayer"
}
while (( $playerPosition != $WINNING_POSITION ))
do
		playerMove 
done
