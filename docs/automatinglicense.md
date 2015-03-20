Automating License Installation
===============================

-	1 Fetch license from URL
-	2 Check license
-	3 Download package
-	4 Validate download
-	5 Install package
-	6 Validate install

:wrench: Tools :wrench:
-----------------------

-	tools/licensetool.py

Automating License Installation
-------------------------------

Installing a license on an SRX is a bit of a challenge. It requires you to enter a command on the CLI. Unfortunately adding a license is not an available RPC nor can use use the "<command>" RPC to call it. Fortunately with automation we can work around this issue. The tool "licensetool.py" can be found in the "tools" directory in the base of the student repository.

The "licensetool.py" uses a Python library called Paramiko that allows you to automation SSH connections. In fact this tool is used int he Junos PyEZ libraries as well. It provides a few different command line flags.

```bash
usage: licensetool.py [-h] [--host HOST] [--username USERNAME]
                      [--password PASSWORD] [--url URL]

Process user input

optional arguments:
  -h, --help           show this help message and exit
  --host HOST          Specify host to connect to
  --username USERNAME  Specify the username
  --password PASSWORD  Specify the password
  --url URL            Specify the license URL
```

The code for the tool is fairly simple. You can open the file or look at the code below.

```python
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
stdin, stdout, stderr = client.exec_command('/usr/sbin/cli -c  ' + '"request system license add {0}"'.format(licenseURL),timeout=60)

data = stdout.read()
print data
```

**Steps in Script** - 1 Gathers command line options from user - 2 Connects to the host using the specified username and password - 3 Executes the command `/usr/sbin/cli -c request system license add URL` - 4 Prints the output of the result of the command

### Using the tool to fetch your licenses

To run the tool change directories to "tools/". From here run the commands specified below. This will fetch your licenses from the proctors server.

```
python licensetool.py  --user root --password Juniper --host 172.16.0.1 --url http://10.10.0.10/license/utm.txt

python licensetool.py  --user root --password Juniper --host 172.16.0.1 --url http://10.10.0.10/license/appsecure.txt
```

Automating Package Download and Install
---------------------------------------
