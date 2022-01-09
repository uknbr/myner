#!/bin/bash

for line in $(fgrep stratum stratum-list.txt | grep tcp | awk '{ print $1 }' | tr -d '/')
do
    _host=$(echo ${line} | cut -d ':' -f 2 | sed 's/LOCATION/usa/g')
    _port=$(echo ${line} | cut -d ':' -f 3)
    _algo=$(echo ${_host} | cut -d '.' -f 1)

    nc -w 3 -zv ${_host} ${_port} > /dev/null 2>&1
    if [ $? -eq 0 ]
    then
        _stat="SUCCESS"
    else
        _stat="FAILED"
    fi

    echo -e "${_algo}\t${_host}\t${_port}\t${_stat}"
done | column -t

exit 0