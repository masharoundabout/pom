#!/bin/bash
# Masha Malkova

ip=$1
port=$2
initial_delay=$3
hold_load=$4
shutdown_time=$5
number_of_threads_a=$6
number_of_threads_b=$7
number_of_threads_c=$8
number_of_threads_d=$9
startup_time_a=${10}
startup_time_b=${11}
startup_time_c=${12}
startup_time_d=${13}
db_url=${14}
db_user=${15}
db_psw=${16}


jmeter_dir="apache-jmeter-3.1/bin"
jmx_dir="apache-jmeter-3.1/bin"
jmx="test_pom.jmx"

$jmeter_dir/jmeter -n -t $jmx_dir/$jmx -J ip=$ip -J port=$port -J initial_delay=$initial_delay -J hold_load=$hold_load -J shutdown_time=$shutdown_time -J number_of_threads_a=$number_of_threads_a -J number_of_threads_b=$number_of_threads_b -J number_of_threads_c=$number_of_threads_c -J number_of_threads_d=$number_of_threads_d -J startup_time_a=$startup_time_a -J startup_time_b=$startup_time_b -J startup_time_c=$startup_time_c -J startup_time_d=$startup_time_d -J db_url=$db_url -J db_user=$db_user -J db_psw=$db_psw
