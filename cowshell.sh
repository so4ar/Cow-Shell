#!/bin/bash

clear

while [ 1 -le 10 ]; do
  read -p "$(pwd)$ " command

  if [ "$command" = "exit" ]; then
    cowsay "I'll miss you."
    exit 33
  fi

  echo "$($command 2>&1)" | cowsay
done
