'this example is designed for stepper motors.
'a switch is connected between IN1 and a 
'positive voltage (between 6V and 24V).
'When the switch is closed, the voltage 
'on IN1 rise and makes the motor to move 
'by 2500 steps in the negtive direction.
'Then it waits until the switch is open 
'and closed again. 


' motor configuration
i_max = 500 'phase current 0.5A max(when accelerating)
acc=5000 'acceleration 5000 RPM per second
dec = acc 'deceleration is the same as acceleration
stp_cnt =400 ' number of steps
m_sp_p = 60 ' set the speed in RPM, positive direction
m_sp_n= m_sp_p ' set the speed, negative direction
'u_step is 16 by default (microstep/step)

target=0 'move to absolute position 0

1 ' start of infinite loop
if in1 < 5000 then goto 1 'wait cycle input

'move by 2500 full steps
target = target -  ( 2500 * u_step )
pause 'wait move done
out1=1 'switch ON the output 1 (and it's LED)
pause 100 'wait 0.1 sec.
out1=0 'switch OFF the output 1

3 ' wait cycle input relased
if in1 > 4000 then goto 3

goto 1









