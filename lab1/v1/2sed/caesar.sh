#!/usr/bin/env bash
declare -i n=$1
file=$2

alphabet="abcdefghijklmnopqrstuvwxyz"
key="${alphabet:n}${alphabet:0:n}"

sed "y/${alphabet}/${key}/" ${file}

