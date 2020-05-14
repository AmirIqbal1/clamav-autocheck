#!/bin/bash

#stops daemon and program
systemctl stop clamav-freshclam

#updates signature base
freshclam

#restarts the service
systemctl start clamav-freshclam

#scans the entire system (root), shows only infected files and checks all files and folders recursively (THIS CAN TAKE A WHILE)

echo "This can take a while, stretch your legs"
clamscan --infected --recursive /
