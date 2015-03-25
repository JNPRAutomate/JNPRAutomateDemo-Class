#!/usr/bin/env python

import argparse
import time
import re
import xml.etree.ElementTree as ET

from jnpr.junos import Device

parser = argparse.ArgumentParser(description='Process user input')
parser.add_argument("--host", dest="host", default="",metavar="HOST",help="Specify host to connect to")
parser.add_argument("--username", dest="username", metavar="USERNAME",help="Specify the username")
parser.add_argument("--password", dest="password", metavar="PASSWORD",help="Specify the password")
args = parser.parse_args()

host = args.host
username = args.username
password = args.password

#first we instantiate an instance of the device
junos_dev = Device(host=host, user=username, password=password)
#now we can connect to the device
junos_dev.open()
#run the RPC to download the security package
download_result = junos_dev.rpc.request_idp_security_package_download()
#output to a sting
print ET.tostring(download_result,encoding="utf8", method="text")

#REGEX to match the done condition
matchDone = re.compile('Done;.*',re.MULTILINE)

#loop through status until OK is seen
while True:
    download_status = junos_dev.rpc.request_idp_security_package_download(status=True)
    print ET.tostring(download_status,encoding="utf8", method="text")
    info = download_status.findtext('secpack-download-status-detail')
    if matchDone.match(info):
        print "Download completed"
        break
    time.sleep(2)

#run the RPC to install the security package
install_result = junos_dev.rpc.request_idp_security_package_install()
#output to a sting
print ET.tostring(install_result,encoding="utf8", method="text")

#loop through status until OK is seen
while True:
    install_status = junos_dev.rpc.request_idp_security_package_install(status=True)
    print ET.tostring(install_status,encoding="utf8", method="text")
    info = install_status.findtext('secpack-status-detail')
    if matchDone.match(info):
        print "Installation completed"
        break
    time.sleep(2)

#run the RPC to download the download policy templates
download_tmpl_result = junos_dev.rpc.request_idp_security_package_download(policy_templates=True)
#output to a sting
print ET.tostring(download_tmpl_result,encoding="utf8", method="text")

#loop through status until OK is seen
matchDone = re.compile('Done;.*',re.MULTILINE)

while True:
    download_status = junos_dev.rpc.request_idp_security_package_download(status=True)
    print ET.tostring(download_status,encoding="utf8", method="text")
    info = download_status.findtext('secpack-download-status-detail')
    if matchDone.match(info):
        print "Download completed"
        break
    time.sleep(2)

#run the RPC to install the download policy templates
install_tmpl_result = junos_dev.rpc.request_idp_security_package_install(policy_templates=True)
#output to a sting
print ET.tostring(install_tmpl_result,encoding="utf8", method="text")

#loop through status until OK is seen
while True:
    install_status = junos_dev.rpc.request_idp_security_package_install(status=True)
    print ET.tostring(install_status,encoding="utf8", method="text")
    info = install_status.findtext('secpack-status-detail')
    if matchDone.match(info):
        print "Installation completed"
        break
    time.sleep(2)
