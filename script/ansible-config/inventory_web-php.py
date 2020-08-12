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
    "json_group":{
        "vars":{
            "bgm_hostname":"10-10-193-47x"
        },
        "hosts":[
            '128.14.237.57',
            '128.14.227.240',
        ]
    },
}

print(json.dumps(inventory))
