#!/usr/bin/env python

import paramiko
import argparse
import logging

logger = paramiko.util.logging.getLogger()
logger.setLevel(logging.WARN)


parser = argparse.ArgumentParser(description='Process user input')
parser.add_argument("--host", dest="host", default="",metavar="HOST",help="Specify host to connect to")
parser.add_argument("--username", dest="username", metavar="USERNAME",help="Specify the username")
parser.add_argument("--password", dest="password", metavar="PASSWORD",help="Specify the password")
parser.add_argument("--url", dest="url",metavar="URL",help="Specify the license URL")
args = parser.parse_args()

host = args.host
username = args.username
password = args.password
licenseURL = args.url

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(host,username=username,password=password,look_for_keys=False)
stdin, stdout, stderr = client.exec_command('/usr/sbin/cli -c "request system license add {0}"'.format(licenseURL),timeout=60)

data = stdout.read()
print data
