#!/usr/bin/env python

import yaml
import sys
from glob import glob
from jinja2 import Template

import argparse

# Collect Arguments
parser = argparse.ArgumentParser(description="Gather options from the user")
parser.add_argument("-b", "--bundle", dest="bundle", action="store" ,help="Template group (both template and yaml mush have same name).", required=True)
args = parser.parse_args()

bundle_template = "%s.j2" % args.bundle
bundle_vars = "%s.yml" % args.bundle


# YAML file.
with open(bundle_vars) as fh:
    data = yaml.load(fh.read())

# Jinja2 template file.
with open(bundle_template) as t_fh:
    t_format = t_fh.read()

template = Template(t_format)
print(template.render(data))
