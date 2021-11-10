'This software demonstrate the usage of the 2nd UART com port
'COM2, on RS485.
'Written by Dynamic Motion. 
'No copyright, free with no restriction

com2cfg=1 'start COM2 in mode 1 (simple ascii)
pr_cfg=pr_cfg|2 'add print action to com2

com2sp=9600 'modify com2 speed



' then send ascii/binary data on the COMs
' Send binary 01
print &1,

' Send binary 0x7F (decimal 127)
print &0h7f,

' Send binary 0x7F + binary 150 +  ascii A
print &0h7f,150,"A",

' Send binary 0x7F +  ascii "Hello World" (without ")
print &0h7f,"Hello World",

' Send binary 0x7F +  ascii "Hello World" + character 13 (carriage return)
print &0h7f,"Hello World"