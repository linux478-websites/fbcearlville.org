#!/bin/bash

function build() {
  echo "Start build"
  echo -n "..make build folder"
  mkdir -p ${BUILD_DIR}
  echo "Done"
}

source configuration.source

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

