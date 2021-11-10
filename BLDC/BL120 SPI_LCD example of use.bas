'This software demonstrate the usage of LCD display
'2 lines of 16 characters, connected on COM3 of the 
'Tinaxis Plus BL120 board. The use is the same or similar
'with other LCD display resolution and other Tinaxis boards
'Written by Dynamic Motion. 
'No copyright, free with no restriction

com3cfg=11 'activate LCD on SPI (COM3)
pr_cfg=0h15 'print standard to COM1 and COM3 and exceptions to COM1
pause 500

'equivalent locate=1001 
'	1xxx to clr display and 001 to put cursor on line 0 raw 1
com out 3, 0, 10, 1001 
print "Dynamic Motion"
pause 2000
com out 3, 0, 10, 1000
print "Set cursor pos"
pause 2000
com out 3, 0, 10, 104 'equivalent locate=104
print "line 1,raw 4"
pause 2000
com out 3, 0, 10, 0 
print "line 0, raw 0  "
pause 2000

com out 3, 0, 10, 1000
print "Change backlight"
pause 3000
com out 3, 0, 10, 100 
print "set to OFF"
pause 300
com out 3, 0, 11, 0 'Backlight OFF
pause 3000
com out 3, 0, 10, 100 
print "set to ON "
com out 3, 0, 11, 1 'Backlight ON
pause 3000

com out 3, 0, 10, 1000
print "Change contrast"
com out 3, 0, 10, 100 
pause 3000
print "set to 0"
com out 3, 0, 12, 0 'contrast 0
pause 1000
com out 3, 0, 10, 100 
print "set to 1"
com out 3, 0, 12, 1 'contrast 1, ...
pause 1000
com out 3, 0, 10, 100
print "set to 2"
com out 3, 0, 12, 2
pause 1000
com out 3, 0, 10, 100
print "set to 3"
com out 3, 0, 10, 100
com out 3, 0, 12, 3 
pause 1000
print "set to 0 again"
com out 3, 0, 12, 0 'contrast 0
pause 3000

com out 3, 0, 10, 1000
print "Print speciality"
pause 3000
com out 3, 0, 10, 100 
a=255
print "decimal val: ",a
pause 3000
com out 3, 0, 10, 100 
print "Hexa val: ",%h a,"    "
pause 3000
com out 3, 0, 10, 100 
print "Special car.",&0h7F,&0h7E,"    "
'use & and the character number found in the display's char table 
pause 3000

com out 3, 0, 10, 1000
print "Other controls"
pause 3000
com out 3, 0, 10, 100 
print "reset LCD"
pause 2000
com out 3, 0, 10, 100 
print "Used in case of "
pause 1500
com out 3, 0, 10, 100 
print "communication   "
pause 1500
com out 3, 0, 10, 100 
print "error to display" 
pause 2000
com out 3, 0, 10, 100 
print "reset now       " 
pause 400
com out 3, 0, 20, 0 'clear and reset LCD level 1
'clear the communication bus (in case of wrong characters written on display)
'for safety, include this line in the software, to be executes every several seconds



pause 300
com out 3, 0, 10, 100 
print "reset done" 
pause 2000
com out 3, 0, 10, 1000
print "End of LCD demo"
com out 3, 0, 10, 105 
print "thank you!" 
end

