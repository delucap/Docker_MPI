#!/bin/bash

if [ "$1" != "" ]; then
    echo "Starting MPI employing"
else
    echo "Insert arguments: <machinefile> <nProcessors> <executableFile>\n"
    exit
fi
{
	scp $3 node01:/home/cpd2021/

} &> /dev/null

cp $3 /home/cpd2021/
mpirun --hostfile $1 -np $2 /home/cpd2021/$3
