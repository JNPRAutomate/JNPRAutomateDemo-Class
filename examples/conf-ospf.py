from jnpr.junos.utils.config import Config
from jnpr.junos import Device


dev = Device( user='netconf', host='172.16.0.1', password='test123' )
dev.open()

pod_number = "1"

set_cfg = """
set interfaces lo0.0 family inet address 10.255.255.{0}/32
set security zones security-zone trust interfaces lo0.0

set security zones security-zone vpn host-inbound-traffic system-services all
set security zones security-zone vpn host-inbound-traffic protocols ospf

set protocols ospf area 0 interface st0.{0}
set protocols ospf area 0 interface lo0.0 passive
""".format(pod_number)

'''
# If you run the script with the wrong variables, the below delete commands should

delete interfaces lo0.0
delete security zones security-zone trust interfaces lo0.0
delete security zones security-zone vpn host-inbound-traffic system-services  all
delete security zones security-zone vpn host-inbound-traffic protocols ospf
delete protocols ospf
'''

dev.bind(cu=Config)
dev.cu
dev.cu.lock()

dev.cu.load(set_cfg, format='set')

commit_diff = dev.cu.diff()
print "Diff: %s" % (commit_diff)
dev.cu.commit()
dev.cu.unlock()

dev.close()