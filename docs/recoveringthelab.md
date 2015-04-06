Recovering the Lab
==================

With automation you are making an investment into the repeatability of your configuration steps. If you were to configure everything by hand then you will need to repeat the same steps by hand to recover a failure. With automation you will be able to repeat the configuration simply by rerunning your automation tools.

Initially the creation of tools requires an upfront investment of time greater than as if you were to configure something by hand. However you can quickly recoup the cost of automation by reusing the tooling several times. Their isn't an exact formula to determine the value of the time spent, however it can become quickly relevant once you have a nasty issue occur. Generally if your are choosing the correct actions to automate then it will end up being used frequently.

Another aspect to consider is your mental availability at the time of the event. A tool or script never forgets. It operates 100% of the time the exact same way. It can not have a hangover, be tired, or be upset that it is a weekend. You may not correctly remember the commands to enter, the details of the environment, or the results that are required. If your network consists of one firewall, then perhaps you can always remember the correct steps. Most likely this will not be the case.

Bringing Back your Firewall
---------------------------

As we went through each step of the lab we used many different automation methods. The one we generally settled on as the correct abstraction was to use Ansible. This provides you with a step based methodology to correctly apply all of the configuration elements to your vSRX. We have take these steps and rolled them into a single playbook. It references all of the other play books and then applies them in the same order that we went through the steps.

**The ALL playbook**

In this playbook we run all of the steps of the lab. We did not have to rewrite all of the existing play books, we simply included them into a single task list. This way all existing automation can be reused without a substantial rewrite of our existing code. Ansible will loop through each included play book running each of the tasks within the included playbook. This was also used by the authors to do rapid testing of the lab, without needing to follow each of the steps.

Almost all of the tasks are done using the Ansible playbook methodology of generating a template configuration and then applying it. The AppSecure licenses and the AppSecure signature packs however use the same scripts.

```yaml
---
- name: Run all tasks
  hosts: mysrx
  connection: local
  gather_facts: no
  vars:
    junos_user: "root"
    junos_password: "Juniper"
    build_dir: "/tmp/"

- include: basic_nat_policies.yml
- include: basic_firewall_policies.yml
- include: vpn_config.yml
- include: vpn_ospf_config.yml
- include: vpn_firewall_policies.yml
- include: vpn_nat_policies.yml
- include: idp_license.yml
- include: idp_secpak.yml
- include: appfw_policies.yml
- include: idp_policies.yml
```

**Calling a script from a playbook**

This play book will call the scripts the same way that we did from the command line. This allows us to reuse the tooling that was already built.

```yaml
---
- name: Install IDP Licenses
  hosts: mysrx
  connection: local
  gather_facts: no
  vars:
    junos_user: "root"
    junos_password: "Juniper"
    build_dir: "/tmp/"

  tasks:
      - name: Install appsec Licenses
        script: ../../tools/licensetool.py  --user {{ junos_user }} --password {{ junos_password }} --host {{ inventory_hostname }} --url http://10.10.0.10/license/appsecure.txt

      - name: Install utm Licenses
        script: ../../tools/licensetool.py  --user {{ junos_user }} --password {{ junos_password }} --host {{ inventory_hostname }} --url http://10.10.0.10/license/utm.txt

```

This play book follows the same idea, however it is used to download the security pack.

```yaml
---
- name: Install IDP Security Packages
  hosts: mysrx
  connection: local
  gather_facts: no
  vars:
    junos_user: "root"
    junos_password: "Juniper"
    build_dir: "/tmp/"

  tasks:
      - name: Install package
        script: ../../tools/idpsecpack.py --user {{ junos_user }} --password {{ junos_password}} --host {{ inventory_hostname }}


```

**Running the all Playbook**

```bash

```
