1
ser_sp=57600
if ser_sp <> 57600 then goto 1
'this loop is recommanded because
'the serial speed can be changed 
'3 seconds after power-on.
'This prevents unknown communication
'settings and permanant communication loss.

cy_p=0
CY_SPT =5000
CY_ACC=10

'CY_NM = 7
cy_x0=0
cy_x1=50
cy_x2=150
cy_x3=362
cy_x4=508
cy_x5=4686
cy_x6=4867
cy_x7=5000
cy_y0=-1000
cy_y1=-980
cy_y2=-900
cy_y3=-414
cy_y4=-387
cy_y5=934
cy_y6=990
cy_y7=1000

cy_ofs=500
cy_scl=1024
CY_SYM=3

mode=12

osc_1 ="cy_p"
'osc_2 ="cy_no"
osc_2 ="mov_tar"
osc_t=4
2
print mov_tar ;
'print cy_p ,"-",cy_no
goto 2


