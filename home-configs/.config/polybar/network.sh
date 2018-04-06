#!/usr/bin/env bash

online=$(ifconfig | grep "RUNNING,MULTICAST" | cut -d ":" -f1)


if [[ "$online" ]]
then
   echo %{F#b6a49b}
 else
   echo %{F#E64141}
fi

exit 0