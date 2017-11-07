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

echo "<h1>System information for host: $(hostname -s)</h1>"
echo ""

echo "<h1>Public IP Address</h1>"
echo "<pre> $(curl 'https://api.ipify.org') </pre>"

echo "<h1>Battery Stats</h1>"
echo "<pre> $(sudo ./pwrstat) </pre>"

echo "<h1>Wifi Networks</h1>"
echo "<pre> $(nmcli -p device wifi list) </pre>"

echo "<h1>Memory Info</h1>"
echo "<pre> $(free -o -m) </pre>"

echo "<h1>Disk Info:</h1>"
echo "<pre> $(df -h) </pre>"

echo "<h1>Logged in Users</h1>"
echo "<pre> $(pinky) </pre>"

echo "</body></html>"
