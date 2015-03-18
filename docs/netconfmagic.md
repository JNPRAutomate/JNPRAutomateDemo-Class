What is the NETCONF subsystem on Junos?
=======================================

When creating a NETCONF connection we mentioned that it is part of an SSH subsystem. An SSH subsytem allows you to bind various services or accomplish remote tasks on the host. More details can be found in [RFC 4254](http://www.ietf.org/rfc/rfc4254.txt). By default when using SSH you are getting a shell on the device. It is also possible to execute a single command on the device. For NETCONF when calling the subsystem in invokes the below script.

NETCONF subsystem script
------------------------

```bash
#!/bin/sh

#Source file: /usr/libexec/ui/netconf

CLI=/usr/sbin/cli

if [ -f $CLI ]; then
    exec $CLI xml-mode netconf need-trailer "$@"
fi
cat << EOFEOFEOF
<rpc-error>
<error-severity>error</error-severity>
<error-message>
NETCONF initialization error
</error-message>
</rpc-error>
EOFEOFEOF
exit 1
```

Lets take a deeper look at what this script does

That is correct. Effectively launching a NETCONF session gives you a Junos CLI instance that is running in XML mode. It is even possible to invoke this from the command line via a hidden command.

```bash
root@NetDevOps-SRX01> junoscript netconf interactive
```

**All options for hidden command**

```bash
root@NetDevOps-SRX01> junoscript ?
Possible completions:
  <[Enter]>            Execute this command
  attributes           List of attributes to pass to management daemon
  interactive          Start interactive session (not for scripts)
  netconf              Run in NETCONF mode
  version              JUNOScript version number
  |                    Pipe through a command
root@NetDevOps-SRX01>
```
