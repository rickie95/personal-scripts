#!/bin/bash

#Install CUPS
if [ -f /bin/apt ]; then 
  sudo apt install cups        
elif [ -f /bin/pacman ]; then 
  sudo pacman -Sy cups
else
  echo "Both apt nor pacman were not found."
  exit -1
fi

# Enable cups daemon 

sudo sytemctl enable org.cups.cupsd

# Add and enable the printer: 
# -p is the printer name
# -E enables it
# -v is the location: ipp stands for ip port
# -m selects the correct driver. For most of the printers `everywhere` do the job

lpadmin -p HpOfficeJet4630 -E -v ipp://192.168.1.5 -m everywhere

# Printer should be available and working.
