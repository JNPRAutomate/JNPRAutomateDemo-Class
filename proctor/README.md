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

2. NDO Public server
.
For reggie setup:-

On your hosting systems, inside the proctor directroy:

    sjunkin-mbp:proctor sjunkin$ pwd
    /Users/sjunkin/sandbox/JNPRAutomateDemo-Student/proctor

    vagrant ssh ndo_public
    cd /vagrant/proctor/ansible

run

ansible-playbook -i inventory.yml ./playbooks/deploy_reggie.yml

It may present an error, if so try to re-run the command.

once that finishes:

    cd /reggie
    python app.py db upgrade
    python app.py db migrate


*****  After students register on the reggie site ****
As the proctor you can go to the reggie admin site and see a list of all the students who have registered via this url : http://10.10.0.10/admin with user:pass [admin:not_verybig_secret]

    cd /vagrant/proctor/tools
    vagrant@NetDevOps-Public:/vagrant/proctor/tools$ python vpn_he_mgr.py --url=http://10.10.0.10/student

The above command will pull all of the registered students out of the reggie database and recreate and update the playbook on the server side with the new data, then execute the playbook


TODO- how to validate the above was successful?
