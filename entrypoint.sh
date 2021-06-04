#!/bin/sh
while [ 1 ]
do
   waitTime=$(shuf -i 1-5 -n 1)
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-4 -n 1)
   d=`date -Iseconds`
   case "$instruction" in
      "1") echo "{\"@timestamp\": \"$d\", \"level\": \"ERROR\", \"message\": \"making a new test json.\"}"
      ;;
      "2") echo "{\"@timestamp\": \"$d\", \"level\": \"INFO\", \"message\": \"this is John's fault.\"}"
      ;;
      "3") echo "{\"@timestamp\": \"$d\", \"level\": \"WARN\", \"message\": \"editing in vi is not fun.\"}"
      ;;
      "4") echo "{\"@timestamp\": \"$d\", \"level\": \"DEBUG\", \"message\": \"Chandler was here.\"}"
      ;;
   esac
done
