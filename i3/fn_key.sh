#!/bin/bash


if grep -q 1 "/sys/module/hid_apple/parameters/fnmode"; then
  echo 2 > /sys/module/hid_apple/parameters/fnmode
  notify-send 'Fn Key' 'fn key is on.'
else 
  echo 1 > /sys/module/hid_apple/parameters/fnmode
  notify-send 'Fn Key' 'fn key is off.'
fi
