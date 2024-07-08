#!/bin/bash

SwitchAudioSource -s "$1"
osascript -e "set volume output volume $2"

