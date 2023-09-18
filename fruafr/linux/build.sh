#!/bin/bash
#Build the ansible collection
#Date: 2023-07-09
#Author: David HEURTEVENT

rm *.tar.gz
echo "Old collection removed"

ansible-galaxy collection build
echo "Collection built"
