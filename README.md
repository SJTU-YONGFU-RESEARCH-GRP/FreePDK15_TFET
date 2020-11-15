FreePDK15(TM) Predictive Process Design Kit with TFET devices
verion 0.01 (20xx-xx-xx)
(Git Repository Commit 20xx-xx-xx)

Copyright (c) 2020 Shanghai Jiao Tong University.
All Rights Reserved.

Please see the file LICENSE in this directory for license.  
You may not use these files except in compliance with the License.

***** Welcome to the FreePDK 15nm Free, Open-Source Process Design Kit *****

This initiative is part of our on-going effort to further include emerging
devices in the FreePDK 15nm project

***** Contents *****

cdslib/           Technology libraires for Cadence Virtuoso
calibre/          SVRF rules for Mentor Graphics Calibre
hspice/           Simulation models for Synopsys HSPICE

***** Quick Design Kit Usage Instructions *****

  1) Download the latest FreePDK 15nm from https://www.eda.ncsu.edu/wiki/FreePDK15:Contents

  2) Include the files in calibre, cdslib and hspice into the FreePDK 15nm
 
  3) Change the environment variable $PDK_DIR in the file
     $PDK_DIR/cdslib/setup/setup.csh to reflect the FreePDK
     installation path.
     
  4) Source your setup scripts for Cadence Virtuoso, Mentor Graphics
     Calibre, and Synopsys HSPICE

  5) Change to the directory where you want to start Virtuoso and
     source the file $PDK_DIR/cdslib/setup/setup.csh.  Note that
     this script copies all of the required user files (.cdsinit,
     cds.lib, and Calibre runset files) to the current working directory 
     if they do not already exist.

  6) Start Cadence Virtuoso ( % virtuoso &  for example ) 

  7) An example of a working FreePDK15nm with TFET is available in the example
  folder

***** Documentation and Support *****

Documentation for this kit is under development.  

