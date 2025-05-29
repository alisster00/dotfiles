#!/bin/bash

pkill swaybg

swaybg -i "$1" &
