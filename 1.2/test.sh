#!/bin/bash

test -d work && rm -rf work work2

mkdir -p work
pushd work
../task_1_2.sh ../tests/
popd

mkdir work2
pushd work2
../task_1_2.sh ../tests/7\ \'\ 8\ \'\ 9\ \"\ 9\ \\\ 10\ \|\ 11\ \|\ 12/
popd
