#!/bin/bash

bin_path=$(dirname $0)/buildCPU/bin/stencil

for ((i=16; i<=512; i*=2))
do
  echo "Running stencil with $i points"
  # save output into log/$i.log
  $bin_path $i> cpulog/$i.log
done