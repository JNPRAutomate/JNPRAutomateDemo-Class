from jnpr.junos import Device
from pprint import pprint as pp
 
dev = Device( user='netconf', host='172.16.0.1', password='test123' )

dev.open()

pp(dev.facts)

dev.close()
