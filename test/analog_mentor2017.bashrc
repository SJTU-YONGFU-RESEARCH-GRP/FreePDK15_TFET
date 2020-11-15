#!/bin/bash
export MMSIM_ROOT=/eda/cadence/mmsim121
#export OA_HOME=/eda/cadence/ic615/oa_v22.41.022/
export OA_HOME=/eda/cadence/ic616_005/oa_v22.43.018/
#export OA_HOME=/eda/cadence/ic614/oa_v22.04.072/
#export CDS_ROOT=/eda/cadence/ic615
export CDS_ROOT=/eda/cadence/ic616_005
#export CDS_ROOT=/eda/cadence/ic614
export X_DIR=/process/xfab
export PATH=$X_DIR/x_all/cadence/xenv:$PATH
export CDSDIR=$CDS_ROOT
export CDSHOME=$CDS_ROOT
export CDS_ROOT=$CDS_ROOT
export CDS_INST_DIR=$CDS_ROOT
export CDS_Netlisting_Mode=Analog
#export CDS_Netlisting_Mode Digital
export PATH=$CDS_INST_DIR/tools/bin:$PATH
export PATH=$CDS_INST_DIR/tools/dfII/bin:$PATH
export PATH=$CDS_INST_DIR/tools/plot/bin:$PATH
export PATH=$CDS_INST_DIR/tools/dracula/bin:$PATH
export PATH=$CDS_ROOT/tools/bin:$PATH
export PATH=$CDS_ROOT/tools/dfII/bin:$PATH
export PATH=$CDS_ROOT/tools/dracula/bin:$PATH
export PATH=$CDS_ROOT/tools/plot/bin:$PATH
export PATH=$CDS_ROOT/tools/iccraft/bin:$PATH
export PATH=$MMSIM_ROOT/tools/dfII/bin:$PATH
export PATH=$MMSIM_ROOT/tools/spectre/bin:$PATH
export PATH=$MMSIM_ROOT/tools/ultrasim/bin:$PATH
export PATH=$MMSIM_ROOT/tools/bin:$PATH
export LM_LICENSE_FILE=5280@MOUNTAIN:27001@MOUNTAIN
#export LM_LICENSE_FILE=5280@BICASL1:27001@BICASL1

export CDS_LOAD_ENV=CSF
#export LD_LIBRARY_PATH=/lib:/lib64:/usr/lib:/usr/lib64:$LD_LIBRARY_PATH
export HSPICE_HOME=/eda/synopsys/hspice/1303
export PATH=$HSPICE_HOME/hspice/amd64:$PATH
#export CDS_LOAD_ENV= CSF



export ASSURAHOME=/eda/cadence/ASSURA616
export PATH=$ASSURAHOME/tools/assrua/bin:$ASSURAHOME/tools/bin:$PATH

export IUS_PATH=/eda/cadence/incisive13
#export IUS_PATH=/eda/cadence/ius92
#export CDS_ROOT=$IUS_PATH
export CDS_INST_DIR=$IUS_PATH
export CDS_ROOT=/eda/cadence/incisive13
export PATH=$IUS_PATH/tools/bin:$PATH
export LD_LIBRARY_PATH=$IUS_PATH/tools/systemc/gcc/install/lib:$IUS_PATH/tools/lib:$IUS_PATH/tools/verilog/lib:$LD_LIBRARY_PATH
export ALTOSHOME=/eda/cadence/liberate1710
export PATH=$ALTOSHOME/bin:$PATH
source /eda/env/mentor2017.bashrc
#source /eda/env/menter2014.cshrc
export CDS_AUTO_64BIT=ALL



