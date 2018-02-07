#!/bin/bash


wknd='wknd1'

for COUNT in {1102..1103}
do
  echo $COUNT
  if [ $COUNT -lt 10 ]
  then
      FILE="./midasData/run0000"$COUNT".mid.gz"
  elif [ $COUNT -lt 100 ]
  then
      FILE="./midasData/run000"$COUNT".mid.gz"
  elif [ $COUNT -lt 1000 ]
  then
      FILE="./midasData/run00"$COUNT".mid.gz"
  elif [ $COUNT -lt 10000 ]
  then
      FILE="./midasData/run0"$COUNT".mid.gz"
  else
      echo "This might not work"
  fi
  echo $FILE
  if [ $COUNT -lt 10 ]
  then
      FILE2="./rootFiles/"$wknd"/sorted0000"$COUNT".root"
  elif [ $COUNT -lt 100 ]
  then
      FILE2="./rootFiles/"$wknd"/sorted000"$COUNT".root"
  elif [ $COUNT -lt 1000 ]
  then
      FILE2="./rootFiles/"$wknd"/sorted00"$COUNT".root"
  elif [ $COUNT -lt 10000 ]
  then
      FILE2="./rootFiles/"$wknd"/sorted0"$COUNT".root"
  else
      echo "This might not work"
  fi
  echo $FILE2
  
  if [ -e $FILE ]
  then
      if [ ! -e $FILE2 ]
      then
      echo $FILE
      
      ./analyzer -i $FILE
      mv output.root $FILE2
      
    fi
  fi
done


