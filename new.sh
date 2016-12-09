#!/bin/bash
# Masha Malkova

ip=$1
port=$2
initial_delay=$3
hold_load=$4
shutdown_time=$5
number_of_threads_1=$6
number_of_threads_2=$7
number_of_threads_3=$8
number_of_threads_4=$9
startup_time_1=$10
startup_time_2=$11
startup_time_3=$12
startup_time_4=$13


jmeter_dir="apache-jmeter-3.1/bin"
jmx_dir="apache-jmeter-3.1/bin"
jmx="test_pom.jmx"

$jmeter_dir/jmeter -n -t $jmx_dir/$jmx -J ip=$ip -J port=$port -J initial_delay=$initial_delay -J hold_load=$hold_load -J shutdown_time=$shutdown_time -J number_of_threads_1=$number_of_threads_1 -J number_of_threads_2=$number_of_threads_2 -J number_of_threads_3=$number_of_threads_3 -J number_of_threads_4=$number_of_threads_4 -J startup_time_1=$startup_time_1 -J startup_time_2=$startup_time_2 -J startup_time_3=$startup_time_3 -J startup_time_4=$startup_time_4
