print "test PLC0832"
2
t=random/10 + 3
print "pause de ",t

outabcd=1
for n=0 to 31
pause t
outabcd=outabcd*2
next
goto 2

