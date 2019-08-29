#!/bin/bash

ME=${0##*/}

_msg() {
	echo "$ME: $*"
}

_start() {
	_msg "Starting..."
	sleep 1
	_msg "Started!"
	trap _stop EXIT
}

_loop() {
	_msg "Running..."
	while true; do
		sleep 1
	done
}

_stop() {
	_msg "Stopping..."
	sleep 1
	_msg "Stopped!"
}

_start "$@" && _loop
