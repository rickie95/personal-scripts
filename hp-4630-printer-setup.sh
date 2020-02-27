#!/bin/bash

#Install CUPS
sudo pacman -Sy cups

# Enable cups daemon 

sudo sytemctl enable org.cups.cupsd

# Add and enable the printer: 
# -p is the printer name
# -E enables it
# -v is the location: ipp stands for ip port
# -m selects the correct driver. For most of the printers `everywhere` do the job

lpadmin -p HpOfficeJet4630 -E -v ipp://192.168.1.5 -m everywhere

# Printer should be available and working.
