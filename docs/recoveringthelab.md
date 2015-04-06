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
vagrant@NetDevOps-Student:/vagrant/ansible$ ansible-playbook -i inventory.yml playbooks/all.yml
```

**Run Output**

```bash
vagrant@NetDevOps-Student:/vagrant/ansible$ ansible-playbook -i inventory.yml playbooks/all.yml

PLAY [Run all tasks] **********************************************************

PLAY [Configure basic NAT policies] *******************************************

TASK: [Build address book entries] ********************************************
changed: [172.16.0.1] => (item={'prefix': '172.16.0.0/24', 'name': 'LocalNet'})
ok: [172.16.0.1] => (item={'prefix': '192.168.10.0/24', 'name': 'PrivateNet'})
ok: [172.16.0.1] => (item={'prefix': '10.10.0.0/22', 'name': 'PublicNet'})

TASK: [Apply address book entries] ********************************************
changed: [172.16.0.1]

TASK: [Build NAT policies] ****************************************************
changed: [172.16.0.1] => (item={'rules': [{'interface': True, 'dst_ips': ['0.0.0.0/0'], 'name': 'rule1', 'src_ips': ['172.16.0.0/24']}], 'src_zone': 'trust', 'rule_set': 'fw-nat', 'dst_zone': 'untrust'})

TASK: [Apply NAT policies] ****************************************************
changed: [172.16.0.1]

PLAY [Configure basic firewall policies] **************************************

TASK: [Build address book entries] ********************************************
ok: [172.16.0.1] => (item={'prefix': '172.16.0.0/24', 'name': 'LocalNet'})
ok: [172.16.0.1] => (item={'prefix': '192.168.10.0/24', 'name': 'PrivateNet'})
ok: [172.16.0.1] => (item={'prefix': '10.10.0.0/22', 'name': 'PublicNet'})

TASK: [Apply address book entries] ********************************************
ok: [172.16.0.1]

TASK: [Build firewall policies config template] *******************************
changed: [172.16.0.1] => (item={'src_zone': 'trust', 'dst_zone': 'untrust', 'src_ips': ['LocalNet'], 'action': 'permit', 'dst_ips': ['any'], 'apps': ['any'], 'policy_name': 'Allow_Policy'})

TASK: [Apply firewall policies] ***********************************************
changed: [172.16.0.1]

PLAY [Configure student vpn to headend] ***************************************

TASK: [set flow tcp-mss] ******************************************************
changed: [172.16.0.1] => (item={'mss': '1350', 'protocol': 'ipsec-vpn'})

TASK: [Apply flow tcp-mss] ****************************************************
changed: [172.16.0.1]

TASK: [Build vpn tunnel interface] ********************************************
changed: [172.16.0.1] => (item={'addr': u'10.255.1.2/30', 'family': 'inet', 'hit_protocols': ['ospf', 'bgp'], 'interface': 'st0', 'hit_services': ['ping', 'traceroute'], 'zone': 'vpn', 'addr_type': 'address', 'unit': '1'})
ok: [172.16.0.1] => (item={'family': 'inet', 'zone': 'untrust', 'interface': 'ge-0/0/2', 'hit_services': ['ike', 'ping', 'ssh', 'netconf'], 'addr_type': 'dhcp', 'unit': '0'})

TASK: [Apply vpn tunnel interface] ********************************************
changed: [172.16.0.1]

TASK: [Build vpn zone] ********************************************************
changed: [172.16.0.1] => (item={'addr': u'10.255.1.2/30', 'family': 'inet', 'hit_protocols': ['ospf', 'bgp'], 'interface': 'st0', 'hit_services': ['ping', 'traceroute'], 'zone': 'vpn', 'addr_type': 'address', 'unit': '1'})
ok: [172.16.0.1] => (item={'family': 'inet', 'zone': 'untrust', 'interface': 'ge-0/0/2', 'hit_services': ['ike', 'ping', 'ssh', 'netconf'], 'addr_type': 'dhcp', 'unit': '0'})

TASK: [Apply vpn zone] ********************************************************
changed: [172.16.0.1]

TASK: [Build VPN Phase 1] *****************************************************
changed: [172.16.0.1] => (item={'ext_interface': 'ge-0/0/2.0', 'gateway_ip': '10.10.0.5', 'ike_policy_mode': 'main', 'shared_secret': 'AwesomePassword123', 'ike_policy_proposal': 'standard', 'ike_name': 'ike-vpn', 'ike_policy_name': 'ike-policy1'})

TASK: [Apply VPN Phase 1] *****************************************************
changed: [172.16.0.1]

TASK: [Build VPN Phase 2] *****************************************************
changed: [172.16.0.1] => (item={'ike_gateway': 'ike-vpn', 'tunnel_int': 'st0.1', 'ipsec_policy_mode': 'standard', 'ipsec_policy_name': 'vpn-policy1', 'ipsec_vpn_name': 'ipsec-vpn'})

TASK: [Apply VPN Phase 2] *****************************************************
changed: [172.16.0.1]

PLAY [Configure student vpn ospf] *********************************************

TASK: [Build vpn tunnel interface] ********************************************
changed: [172.16.0.1] => (item={'addr': u'10.255.1.2/30', 'family': 'inet', 'hit_protocols': ['ospf', 'bgp'], 'interface': 'st0', 'hit_services': ['ping', 'traceroute'], 'zone': 'vpn', 'ospf': {'area': '0'}, 'addr_type': 'address', 'unit': '1'})
ok: [172.16.0.1] => (item={'addr': u'10.255.255.1/32', 'family': 'inet', 'interface': 'lo0', 'zone': 'trust', 'ospf': {'passive': True, 'area': '0'}, 'addr_type': 'address', 'unit': '0'})

TASK: [Apply vpn tunnel interface] ********************************************
changed: [172.16.0.1]

TASK: [Build vpn zone] ********************************************************
changed: [172.16.0.1] => (item={'addr': u'10.255.1.2/30', 'family': 'inet', 'hit_protocols': ['ospf', 'bgp'], 'interface': 'st0', 'hit_services': ['ping', 'traceroute'], 'zone': 'vpn', 'ospf': {'area': '0'}, 'addr_type': 'address', 'unit': '1'})
ok: [172.16.0.1] => (item={'addr': u'10.255.255.1/32', 'family': 'inet', 'interface': 'lo0', 'zone': 'trust', 'ospf': {'passive': True, 'area': '0'}, 'addr_type': 'address', 'unit': '0'})

TASK: [Apply vpn zone] ********************************************************
changed: [172.16.0.1]

TASK: [Build vpn OSPF] ********************************************************
changed: [172.16.0.1] => (item={'addr': u'10.255.1.2/30', 'family': 'inet', 'hit_protocols': ['ospf', 'bgp'], 'interface': 'st0', 'hit_services': ['ping', 'traceroute'], 'zone': 'vpn', 'ospf': {'area': '0'}, 'addr_type': 'address', 'unit': '1'})
ok: [172.16.0.1] => (item={'addr': u'10.255.255.1/32', 'family': 'inet', 'interface': 'lo0', 'zone': 'trust', 'ospf': {'passive': True, 'area': '0'}, 'addr_type': 'address', 'unit': '0'})

TASK: [Apply vpn OSPF] ********************************************************
changed: [172.16.0.1]

PLAY [Configure VPN firewall policies] ****************************************

TASK: [Build address book entries] ********************************************
changed: [172.16.0.1] => (item={'prefix': '172.16.0.10/32', 'name': 'NetDevOpsVM'})

TASK: [Apply address book entries] ********************************************
changed: [172.16.0.1]

TASK: [Build firewall policies config template] *******************************
changed: [172.16.0.1] => (item={'src_zone': 'trust', 'dst_zone': 'vpn', 'src_ips': ['NetDevOpsVM'], 'action': 'permit', 'dst_ips': ['PrivateNet'], 'apps': ['junos-http', 'junos-ping', 'junos-ssh', 'junos-https'], 'policy_name': 'Allow_Policy'})

TASK: [Apply firewall policies] ***********************************************
changed: [172.16.0.1]

PLAY [Configure VPN NAT policies] *********************************************

TASK: [Build address book entries] ********************************************
changed: [172.16.0.1] => (item={'prefix': '172.16.0.0/24', 'name': 'LocalNet'})
ok: [172.16.0.1] => (item={'prefix': '192.168.10.0/24', 'name': 'PrivateNet'})
ok: [172.16.0.1] => (item={'prefix': '10.10.0.0/22', 'name': 'PublicNet'})

TASK: [Apply address book entries] ********************************************
ok: [172.16.0.1]

TASK: [Build NAT policies] ****************************************************
changed: [172.16.0.1] => (item={'rules': [{'interface': True, 'dst_ips': ['0.0.0.0/0'], 'name': 'vpnrule', 'src_ips': ['172.16.0.10/32']}], 'src_zone': 'trust', 'rule_set': 'vpn-nat', 'dst_zone': 'vpn'})

TASK: [Apply NAT policies] ****************************************************
changed: [172.16.0.1]

PLAY [Install IDP Licenses] ***************************************************

TASK: [Install appsec Licenses] ***********************************************
changed: [172.16.0.1]

TASK: [Install utm Licenses] **************************************************
changed: [172.16.0.1]

PLAY [Install IDP Security Packages] ******************************************

TASK: [Install package] *******************************************************
changed: [172.16.0.1]

PLAY [Configure AppFirewall policies] *****************************************

TASK: [Build app firewall policies] *******************************************
changed: [172.16.0.1] => (item={'rules': [{'action': 'deny', 'dynapps': ['junos:GOOGLE', 'junos:GOOGLE-ACCOUNTS', 'junos:GOOGLE-ACCOUNTS-SSL', 'junos:GOOGLE-ADS', 'junos:GOOGLE-ANALYTICS-TRACKING', 'junos:GOOGLE-APPENGINE', 'junos:GOOGLE-CACHE', 'junos:GOOGLE-DESKTOP', 'junos:GOOGLE-DOCS', 'junos:GOOGLE-DOCS-DRAWING', 'junos:GOOGLE-DOCS-FORM', 'junos:GOOGLE-DOCS-PRESENTATION', 'junos:GOOGLE-DOCS-SPREADSHEET', 'junos:GOOGLE-DOCS-WORD-DOCUMENT', 'junos:GOOGLE-DRIVE', 'junos:GOOGLE-EARTH', 'junos:GOOGLE-GROUPS-POST', 'junos:GOOGLE-MAPS', 'junos:GOOGLE-MOBILE-MAPS-APP', 'junos:GOOGLE-PICASA', 'junos:GOOGLE-PLUS', 'junos:GOOGLE-PLUS-SSL', 'junos:GOOGLE-SAFEBROWSE-SUB', 'junos:GOOGLE-SAFEBROWSE-UPDATE', 'junos:GOOGLE-SKYMAP', 'junos:GOOGLE-STATIC', 'junos:GOOGLE-SYNDICATION', 'junos:GOOGLE-TOOLBAR', 'junos:GOOGLE-TRANSLATE', 'junos:GOOGLE-UPDATE', 'junos:GOOGLE-VIDEOS', 'junos:GOOGLE-WEBCHAT', 'junos:GOOGLETALK'], 'name': 'rule1'}], 'rule_set_default_action': 'permit', 'rule_set': 'ruleset1'})

TASK: [Apply app firewall policies] *******************************************
changed: [172.16.0.1]

TASK: [Apply app firewall rules to policy] ************************************
changed: [172.16.0.1] => (item={'appfw_rule_set': 'ruleset1', 'src_zone': 'trust', 'dst_zone': 'untrust', 'policy_name': 'Allow_Policy'})

TASK: [Apply firewall policies] ***********************************************
changed: [172.16.0.1]

PLAY [Configure IPS policies] *************************************************

TASK: [Build ips policies config template] ************************************
changed: [172.16.0.1] => (item=ips_policy_info)

TASK: [Apply ips policies] ****************************************************
changed: [172.16.0.1]

TASK: [Build ips policy apply template] ***************************************
changed: [172.16.0.1] => (item={'src_zone': 'trust', 'dst_zone': 'untrust', 'policy_name': 'Allow_Policy'})

TASK: [Activate ips policy] ***************************************************
changed: [172.16.0.1]

PLAY RECAP ********************************************************************
172.16.0.1                 : ok=43   changed=40   unreachable=0    failed=0

vagrant@NetDevOps-Student:/vagrant/ansible$
```

Your device should now have the complete configuration on it.

![Success Wyatt](https://github.com/JNPRAutomate/AutomationMemes/blob/master/success_wyatt.gif)
