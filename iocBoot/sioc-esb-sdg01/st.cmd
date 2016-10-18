#!../../bin/linux-x86_64/sdg

epicsEnvSet( "STREAM_PROTOCOL_PATH","../../sdgApp/Db:.")
epicsEnvSet( "PROTOFILE","sdg.proto")

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/sdg.dbd"
sdg_registerRecordDeviceDriver pdbbase

epicsEnvSet("P","ESB:SDG01")
drvAsynIPPortConfigure ("L0","ts-esb-06:2006",0,0,0)

#asynSetTraceMask("L0",-1,0x9)
#asynSetTraceIOMask("L0",-1,0x2)

dbLoadRecords("db/sdg.db","IOCNAME=${IOC},P=ESB:SDG01,PORT=P0,L=L0,A=0,PROTOFILE=$(PROTOFILE)")
dbLoadRecords("db/sdg-3.db","P=ESB:SDG01,PORT=P0,L=L0,A=0,PROTOFILE=$(PROTOFILE)")

cd ${TOP}/iocBoot/${IOC}
iocInit()

