# Raspbian Auto Update 

## Introduction

Auto upgrade and update script for Raspbian.

## Installation

1. place file to Rpi

`/home/pi/AutoUpdate/updateRaspbian.sh`

2. set access permissions

`chmod +x /home/pi/AutoUpdate/updateRaspbian.sh`

3. test script

`bash /home/pi/AutoUpdate/updateRaspbian.sh`

4. schedule with crontab

`crontab -e`

add to last (this will run on Friday AM 03:00)
`00 03  * * 5 bash /home/pi/AutoUpdate/updateRaspbian.sh`

## Note

If script is run on both Windows and Linux OS. Uses dos2Unix tool to convert script.

Windows uses CRLF (\r\n) as line endings, while Unix-like systems (including Linux and Raspberry Pi's Raspbian) use LF (\n). This discrepancy in line endings can cause errors when running the script on Unix-like systems.