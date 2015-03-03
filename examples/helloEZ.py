from jnpr.junos import Device
 
dev = Device( user='netconf', host='172.16.0.1', password='test123' )

dev.open()

print dev.facts

dev.close()
