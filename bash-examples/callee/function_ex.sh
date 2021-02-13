#!/bin/bash
function get_service_dir {
    if [ "$service" == "rpm" ]
    then
        echo "mystream";
    elif [ "$service" == "api" ]
    then
        echo "webservice";
    else
        echo "provisioning";
    fi
}
