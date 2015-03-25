from jnpr.junos.utils.config import Config
from jnpr.junos import Device
from datetime import datetime

import yaml
import argparse
import os

def time():
    """
    Basic Time Function for log function use.
    """
    return datetime.now().strftime("%Y-%m-%d %H:%M:%S")

def log_output(msg):
    """
    Simple function to print consistent output.
    """
    log_divide = "#" * 80 + "\n"
    log = "# " + str(time()) + " " + msg
    log_end = " " * (len(log_divide) - len(log) - 2) + "#\n"

    print log_divide + log + log_end + log_divide

# Collect Arguments
parser = argparse.ArgumentParser(description="Gather options from the user")
parser.add_argument("-b", "--bundle", dest="bundle", action="store" ,help="Template group (both template and yaml mush have same name).", required=True)
parser.add_argument("-u", "--user", dest="user", action="store", help="Username for SSH/Netconf.", default=os.environ.get('PYEZ_USER', None))
parser.add_argument("-d", "--device", dest="device", action="store", help="IP or Hostname for SSH/Netconf.", default=os.environ.get('PYEZ_DEVICE', None))
parser.add_argument("-p", "--password", dest="password", action="store", help="Password for SSH/Netconf.", default=os.environ.get('PYEZ_PASSWORD', None))
parser.add_argument("-f", "--format", dest="format", action="store" ,help="Format for configuration.", choices=['text', 'set', 'xml'], default="text")

args = parser.parse_args()

# Ensure that Device login details are defined
if args.user == None:
    print("ERROR: No user defined on command line or environment variable 'PYEZ_USER'")
    exit()

if args.device == None:
    print("ERROR: No device defined on command line or environment variable 'PYEZ_DEVICE'")
    exit()

if args.password == None:
    print("ERROR: No user defined on command line or environment variable 'PYEZ_PASSWORD'")
    exit()

# Create bundle variables
bundle_template = "%s.j2" % args.bundle
bundle_vars = "%s.yml" % args.bundle

# This is terrible code. You would want to do some basic error checking on
# command-line / environment variables before passing to the system,
# but this is a simple example.
dev = Device( user=args.user, host=args.device, password=args.password )

log_output("Connecting to Device (%s):" % args.device)
dev.open()
 
dev.bind(cu=Config)
dev.cu

tvars = yaml.load(open(bundle_vars).read())

log_output("Loading Template to Candidate Config:")
dev.cu.load(template_path=str(bundle_template), template_vars=tvars, format=str(args.format))

log_output("Performing Config Diff:")
commit_diff = dev.cu.diff()
print commit_diff

log_output("Performing Commit Check:")
commit_check = dev.cu.commit_check()
print commit_check

commit_yes = raw_input('Proceed with Commit? [y | N]: ')
if commit_yes.upper() == "Y" or commit_yes.upper() == "YES":
    log_output("Performing Config Commit:")
    dev.cu.commit()
else:
    log_output("Skipping Config Commit:")

log_output("Disconnecting from Device (%s):" % args.device)
dev.close()
