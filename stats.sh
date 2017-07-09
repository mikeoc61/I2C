#!/bin/bash
###########################
#
# script to report various systems data via cgi-bin to a web browser
#
# Version 1.0 - 12/4/16
#
# Author: Michael E. O'Connor
#
###########################

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Bash as CGI"
echo "</title></head><body>"

echo "<h1>System information for host $(hostname -s)</h1>"
echo ""

echo "<h1>Power Stats</h1>"

#for i in `seq 1 5`;
#do
   echo "<pre> Power status is $(./pwrstat) </pre>"
#   sleep 1s
#done

echo "<h1>Wifi Networks</h1>"
echo "<pre> $(nmcli -p device wifi list) </pre>"

echo "<h1>Memory Info</h1>"
echo "<pre> $(free -o -m) </pre>"

echo "<h1>Disk Info:</h1>"
echo "<pre> $(df -h) </pre>"

echo "<h1>Logged in Users</h1>"
echo "<pre> $(w) </pre>"

echo "</body></html>"
