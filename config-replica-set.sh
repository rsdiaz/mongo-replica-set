#!/bin/bash
mongo <<EOF
var config = {
    "_id": "replica-set",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mongo-primary-server:27017",
            "priority": 3
        },
        {
            "_id": 2,
            "host": "mongo-secondary-server1:27017",
            "priority": 2
        },
        {
            "_id": 3,
            "host": "mongo-secondary-server2:27017",
            "priority": 1
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF