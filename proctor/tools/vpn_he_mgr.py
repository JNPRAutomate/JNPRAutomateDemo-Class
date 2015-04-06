#!/usr/bin/env python

import argparse
import urllib2
import ansible.playbook
import ansible.inventory
from ansible import callbacks
from ansible import utils
import json
import os

parser = argparse.ArgumentParser(description='Process user input')
parser.add_argument("--url", dest="url",metavar="URL",help="Specify the license URL")
args = parser.parse_args()

req = urllib2.Request(args.url)
req.add_header('Accept', 'application/json')
res = urllib2.urlopen(req)
data = res.read()

#Test JSON to use if needed to validate
test_json = '''
{"pods": [ { "addr_lo0": "10.255.255.1/32","addr_st0": "10.255.1.2/30","addr_wan": "10.10.0.29","id": 1,"pod_number": 1,"url": "http://127.0.0.1:18500/student/1","username": "Rob"}]}
'''

try:
    pod_data = json.loads(data)
except:
    print "Unable to read JSON data"
else:
    print pod_data
    stats = callbacks.AggregateStats()
    a_inventory = ansible.inventory.Inventory(os.path.realpath('../ansible/inventory.yml'))
    pb = ansible.playbook.PlayBook(playbook=os.path.realpath('../ansible/playbooks/add_vpn_gateway.yml'),
                                   inventory=a_inventory,
                                   extra_vars=pod_data,
                                   callbacks=callbacks.PlaybookCallbacks(verbose=utils.VERBOSITY),
                                   runner_callbacks=callbacks.PlaybookRunnerCallbacks(stats, verbose=utils.VERBOSITY),
                                   stats=stats)
    pb.run()
