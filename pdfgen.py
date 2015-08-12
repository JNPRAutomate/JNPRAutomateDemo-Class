#! /usr/bin/env python

from pyPdf import PdfFileWriter, PdfFileReader

outputFile = PdfFileWriter()
outputName = "JNPRAutomateDemo-Class.pdf"

pdfPath = "pdf/"

docList = [
    "README.pdf",
    "installinglab.pdf",
    "topologyoverview.pdf",
    "vsrxconfiguration.pdf",
    "vsrxheconfiguration.pdf",
    "vmconnectivity.pdf",
    "softwareoverview.pdf",
    "installingsoftware.pdf",
    "usingpyezlibrary.pdf",
    "usingansible.pdf",
    "basicapireview.pdf",
    "netconfmagic.pdf",
    "configuringnat.pdf",
    "configuringnatwansible.pdf",
    "basicfwpolicies.pdf",
    "vpnconnectiontoheadend.pdf",
    "enablingdynamicrouting.pdf",
    "creatingfwpolicies.pdf",
    "automatinglicense.pdf",
    "creatingapppolicies.pdf",
    "creatingipspolicies.pdf",
    "disasterstrikes.pdf",
    "recoveringthelab.pdf",
    "recoveringthelabnolic.pdf",
    "reviewingthelab.pdf",
    "vmpasswords.pdf"
]

def concat_pdf(newFile,output):
    for page in range(newFile.numPages):
        output.addPage(newFile.getPage(page))

print "Starting PDF generation for the file {0}".format(outputName)

for doc in docList:
    print "Adding {1}...".format(pdfPath,doc)
    concat_pdf(PdfFileReader(file("{0}{1}".format(pdfPath,doc),"rb")),outputFile)

outputFile.write(file(outputName,"wb"))
