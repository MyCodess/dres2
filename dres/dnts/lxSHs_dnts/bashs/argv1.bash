#!/bin/bash

#- DIFF:    $*   $@   "$*"   "$@"
#- usage-eg:  ...   aa  "b1  b2" cc      #-OR:  11 "2a 2b" 33
#- see man bash / Special Parameters

echo "each positional-argv is seperated by:  ,<index>::<value>";
echo 'So, if you want the REAL call-args, usu. it is the eclosed-@ as:  "$@" !'
echo;

echo '=============== NO "..." ============================='
echo -n '*  :: ' ; jj=0; for ii in   $*; do (( jj+=1)); echo -n "  ,$jj::$ii"; done; echo;
echo -n '@  :: ' ; jj=0; for ii in   $@; do (( jj+=1)); echo -n "  ,$jj::$ii"; done; echo;

echo '=============== in "..." ============================='
echo -n '"*":: ' ; jj=0; for ii in "$*"; do (( jj+=1)); echo -n "  ,$jj::$ii"; done; echo;
echo -n '"@":: ' ; jj=0; for ii in "$@"; do (( jj+=1)); echo -n "  ,$jj::$ii"; done; echo;


## ################################## prev: ###################################
##__  for ii in   $*; do echo -n "----$ii"; done; echo ' :: * ';
##__  for ii in   $@; do echo -n "----$ii"; done; echo ' :: @ ';
##__  echo;
##__  echo '=============== in "..." ============================='
##__  for ii in "$*"; do echo -n "----$ii"; done; echo ' :: * ';
##__  for ii in "$@"; do echo -n "----$ii"; done; echo ' :: @ ';

