TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = sdg

DBD += sdg.dbd

sdg_DBD += sdgSup.dbd
sdg_DBD += base.dbd
sdg_DBD += stream.dbd
sdg_DBD += asyn.dbd
sdg_DBD += asSupport.dbd
#sdg_DBD += calcSupport.dbd
sdg_DBD += drvAsynIPPort.dbd

sdg_SRCS += sdg_registerRecordDeviceDriver.cpp sdgASub.c
sdg_SRCS_DEFAULT += sdgMain.cpp

sdg_LIBS += asyn
sdg_LIBS += autosave
sdg_LIBS += stream
#sdg_LIBS += calc

sdg_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

