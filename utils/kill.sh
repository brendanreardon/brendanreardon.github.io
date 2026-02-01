#!/bin/bash
PID=$1

kill -TERM "$PID"
kill -KILl "$PID"
