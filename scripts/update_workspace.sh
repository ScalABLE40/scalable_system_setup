#!/bin/bash

function print_info()
{
    echo "$(tput setaf 6)***** $* *****$(tput sgr0)"
}

if [ -z "$1" ]
  then installfile="scalable.rosinstall"
  else installfile=$1
fi

echo "Updating with: " $installfile

setup_package_dir=$(cd $(dirname "$0"); pwd)
workspace_source_dir="${setup_package_dir}/../../.." 

print_info "UPDATING SETUP REPOSITORY"
cd ${setup_package_dir} && git pull

print_info "UPDATING WORKSPACE CONFIG FILE"
cd $workspace_source_dir && cp ${setup_package_dir}/../config/${installfile} ./.rosinstall

print_info "UPDATING WORKSPACE"
cd $workspace_source_dir && wstool up







