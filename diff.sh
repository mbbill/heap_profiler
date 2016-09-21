#!/bin/bash
if [[ -z $1 ]]; then echo 'Usage: diff.sh <xxx.heap> <yyy.heap>' && exit;fi
../../pprof --lib_prefix=../../sysroot --svg --nodefraction=.002 --edgefraction=.001 --nodecount=300 --base=${1} ../../sysroot/system/bin/app_process ${2} > diff.svg
