#!/bin/sh

# run AJIT C Model on the generated mmap file
_MAIN="main";
ajit_C_system_model \
  -n 1 \
  -t 1 \
  -m ${_MAIN}.mmap.remapped \
  -w ${_MAIN}.wtrace \
  -d \
  -r main.results \
  -l ${_MAIN}.log;
