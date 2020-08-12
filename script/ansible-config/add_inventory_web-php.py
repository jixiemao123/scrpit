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
            'x.x.x.x',
        ]
    }
}

print(json.dumps(inventory))
