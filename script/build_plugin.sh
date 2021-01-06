#!/bin/bash
CURRENT=$(pwd)
SCRIPTPATH=`dirname $(dirname $(realpath $0))`

PLUGIN_DIR="plugin-build"
PLUGIN_ABS_PATH=${CURRENT}/${PLUGIN_DIR}

source ${SCRIPTPATH}/script/linux_share_build.sh

install_prerequise
setup_Trelis_sdk

setup_folder

build_moab
build_dagmc

build_plugin
build_plugin_pkg



mv -v svalinn-plugin_linux_$1.tgz /Trelis-sdk
cd ..
#rm -rf pack bld DAGMC lib moab
#rm Trelis-plugin
