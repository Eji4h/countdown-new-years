#!/bin/bash

target_year=${1}
target_date="Jan 1 $target_year"

. countdown.sh -d "$target_date"

echo "Happy news year" $target_year "!!!"
