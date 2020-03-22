#!/bin/bash

DATE_TIME=$(date '+%d-%m-%Y_%H-%M-%S');

FILE_NAME="screen_$DATE_TIME.png";
DEVICE_PATH="/sdcard/$FILE_NAME";

adb shell screencap -p $DEVICE_PATH;

adb pull $DEVICE_PATH $FILE_NAME;

adb shell rm $DEVICE_PATH;

echo "Screenshot: '$FILE_NAME'.";
