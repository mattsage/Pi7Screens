#!/usr/bin/env python

import signal
import buttonshim
import blinkt
import os

blinkt.set_clear_on_exit()

##########################################
#Button A
#Setup VPN and Start Transmission
##########################################
@buttonshim.on_press(buttonshim.BUTTON_A)
def button_a(button, pressed):
    buttonshim.set_pixel(128, 0, 0)
	blinkt.set_all(128, 0, 0)

##########################################
#Button B
#MotionEyeOS 192.168.1.100
##########################################
@buttonshim.on_press(buttonshim.BUTTON_B)
def button_b(button, pressed):
    buttonshim.set_pixel(0, 128, 0)
	blinkt.set_all(0, 128, 0)

##########################################
#Button C
#???????????????????????
##########################################
@buttonshim.on_press(buttonshim.BUTTON_C)
def button_c(button, pressed):
	buttonshim.set_pixel(0, 0, 128)
	blinkt.set_all(0, 0, 128)

##########################################
#Button D
#???????????????????????
##########################################
@buttonshim.on_press(buttonshim.BUTTON_D)
def button_d(button, pressed):
    buttonshim.set_pixel(0xff, 0xff, 0x00)

##########################################
#Button E
#???????????????????????
##########################################
@buttonshim.on_press(buttonshim.BUTTON_E)
def button_e(button, pressed):
    buttonshim.set_pixel(0xff, 0x00, 0x00)

##########################################
#Button E HOLD
#Power Off
##########################################
@buttonshim.on_hold(buttonshim.BUTTON_E, hold_time=2)
def button_e(button, pressed):
    buttonshim.set_pixel(255, 0, 0)
    os.system("sudo poweroff")
	
signal.pause()
