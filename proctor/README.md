Network and Security Automation Workshop : PROCTOR MODE :
========================================


This directory outlines the proctor side of the vSRX based automation lab.  There are number of proctor only steps to setup and manage on this side.

Refere to the [Topology Overview](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/topologyoverview.md) as needed for the view into the proctor setup.

Setup prior to beginning lab:
1. Headend vSRX vm.
2. NDO public vm
3. NDO private vm.
4. Reggie server

1. HE vSRX

cd into the 'proctor' directory - your path should be similar to this:

    sjunkin-mbp:proctor sjunkin$ pwd
    /Users/sjunkin/sandbox/JNPRAutomateDemo-Student/proctor

run the following command:

    sjunkin-mbp:proctor sjunkin$ vagrant up

This will load the three vm's for the proctor end of the lab.