#!/bin/bash

function print_info()
{
    echo "$(tput setaf 6)***** $* *****$(tput sgr0)"
}

setup_package_dir=$(cd $(dirname "$0"); pwd)
workspace_source_dir="${setup_package_dir}/../../.." 
conf_file="$workspace_source_dir/.rosinstall.conf" 

if [[ -z "$1" && ! -f $conf_file ]]
  then echo "Must specify a rosinstall file the first time you use this script."
  exit 0
fi

if [ -z "$1" ]
  then installfile=$(cat $conf_file)
  else 
    installfile=$1
    echo $1 > $conf_file
fi

if [[ $installfile = *"https"* ]]; 
  then thread=1
else
  thread=4
fi

echo "Updating with: " $installfile

print_info "UPDATING SETUP REPOSITORY"
cd ${setup_package_dir} && git pull

print_info "UPDATING WORKSPACE CONFIG FILE"
cd $workspace_source_dir && cp ${setup_package_dir}/../config/${installfile} ./.rosinstall

print_info "UPDATING WORKSPACE"
cd $workspace_source_dir && wstool up -j $thread
