
#!/bin/bash -x
echo "================== Welcome to Snake Ladder Game ==================="
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
playerMove
