#! /bin/bash

pushd build/ > /dev/null

./DumpISO $1 > $2
./ConvertISO $2

popd > /dev/null