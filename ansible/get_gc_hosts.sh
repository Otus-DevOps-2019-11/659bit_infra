#!/bin/bash

reddit_app_ip=$(gcloud compute instances list --filter="name:(reddit-app)" --format="value(networkInterfaces[0].accessConfigs[0].natIP)")
reddit_db_ip=$(gcloud compute instances list --filter="name:(reddit-db)" --format="value(networkInterfaces[0].accessConfigs[0].natIP)")

cat <<EOF
{
    "app": {
        "hosts": ["appserver"]
    },
    "db": {
        "hosts": ["dbserver"]
},
    "_meta": {
        "hostvars": {
            "appserver": {
EOF
echo ""ansible_host": "$reddit_app_ip" }, "dbserver": { "ansible_host": "$reddit_db_ip" } } } }"
