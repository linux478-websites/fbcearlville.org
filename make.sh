#!/usr/bin/bash

function build() {
  echo "build"
}

PS3="Select the operation: "

select opt in build quit; do

  case $opt in
    build)
      build
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done

