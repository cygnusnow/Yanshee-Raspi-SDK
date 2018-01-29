#!/usr/bin/python
# _*_ coding: utf-8 -*-

import time
import RobotApi

#------------------------------Connect----------------------------------------
RobotApi.ubtRobotInitialize()

#The robot name you want to connect
robotname="Yanshee_8F83"
gIPAddr = "127.0.0.1"

robotinfo = RobotApi.UBTEDU_ROBOTINFO_T()
ret = RobotApi.ubtRobotDiscovery(1, "sdk", robotinfo)
if (0 != ret):
	print ("Return value: %d" % ret)
	exit(1)
if (robotinfo.acName == robotname):
	timeout = 0
else:
	timeout = 255
# Search the robot
while (0 != timeout):
	ret = RobotApi.ubtRobotDiscovery(0, "sdk", robotinfo)
	if (0 != ret):
		print ("Return value: %d" % ret)
		break

	print ("Name: %s" % (robotinfo.acName))
	print ("IP: %s" % (robotinfo.acIPAddr))
	if (robotinfo.acName == robotname):
		gIPAddr = robotinfo.acIPAddr
		break
	time.sleep(1)
        timeout -= 1

print "gIPAddr = %s" %(gIPAddr)
ret = RobotApi.ubtRobotConnect("sdk", "1", gIPAddr)
if (0 != ret):
	print ("Return value: %d" % ret)
	exit(1)

#-----------------------------Get all servos' angle------------------------------


servoinfo = RobotApi.UBTEDU_ROBOTSERVO_T()

ret = RobotApi.ubtGetRobotServo(servoinfo)
print "servoinfo.SERVO1_ANGLE = %d" %(servoinfo.SERVO1_ANGLE)
print "servoinfo.SERVO2_ANGLE = %d" %(servoinfo.SERVO2_ANGLE)
print "servoinfo.SERVO3_ANGLE = %d" %(servoinfo.SERVO3_ANGLE)
print "servoinfo.SERVO17_ANGLE = %d" %(servoinfo.SERVO17_ANGLE)

#--------------------------DisConnect--------------------------------- 
RobotApi.ubtRobotDisconnect("SDK","1",gIPAddr)
RobotApi.ubtRobotDeinitialize()

