#!/bin/bash
#Install the ansible collection locally
#Date: 2023-07-09
#Author: David HEURTEVENT

ansible-galaxy collection install . --force
echo "Collection installed locally"
