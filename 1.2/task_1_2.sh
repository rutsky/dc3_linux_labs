#!/bin/bash

function print_usage
{
  echo "Usage:"
  echo "  $0 path"
  echo "       recreate 'path' directory structure in current directory"
  echo "  $0 -h|--help"
  echo "       print help and exit"
}

if [ "$#" == 1 ]; then
  if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    print_usage
    exit 0
  else
    find "$1" -depth -type d -printf './%P\0' | xargs -0 mkdir -p
    exit 0
  fi
fi

if [ "$#" -gt 1 ]; then
  echo "Error: too much arguments."
else 
  echo "Error: no arguments passed."
fi

print_usage
exit 1
