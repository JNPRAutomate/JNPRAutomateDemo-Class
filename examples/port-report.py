from jnpr.junos.op.phyport import *
from jnpr.junos import Device
 
dev = Device( user='netconf', host='172.16.0.1', password='test123' )
dev.open()
 
ports = PhyPortTable(dev).get()
 
print "Port,Status,Flapped" #Print Header for CSV
 
 
for port in ports:
        print("%s,%s,%s" % (port.key, port.oper, port.flapped))
 
print "\n\n"
