#!/usr/bin/env python

import argparse
import os
import sys
import time

try:
    import json
except:
    import simplejson as json
inventory={
    "json_group": {
        "hosts": [
            "23.236.125.58",
        ],
        "vars": {
            "ansible_port": 22,
            
        }
    },
    "_meta": {
        "hostvars": {
            "23.236.125.58": {
                "nodes": [
                    {"redis_name":"valueq_com_cache","bind_ip":"10.27.68.183","port":"6379","maxmemory":"1G","master_ip":"","master_port":'6379',"appendonly":"no"},
                ]
            },
        }
    }
}
print(json.dumps(inventory))
