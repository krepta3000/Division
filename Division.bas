REM Division by repeated Subtraction
Start:
INPUT "A",A
INPUT "B",B
X=A
Z=0
IF B=0 THEN GOTO zerodivtrap
PRINT "How many times can I subtract ";B; " from ";A;" to reach 0? "

Calculate:
IF X-B<0 THEN GOTO Finished
Z=Z+1
PRINT X; "-" ;B; "=";
X=X-B
PRINT X
GOTO Calculate

Finished:
PRINT "The answer is: ";Z;" subtraction(s) to reach 0, with a remainder of " ;X; "."
PRINT A;"/" ;B; "=" ;Z; "+" ;X; "/" ;B; "=" ;A/B
GOTO Ask

zerodivtrap:
PRINT "You can't divide by 0, idiot!"
PRINT "No you can't!"
INPUT "Do it anyway?  Y/N",Y$
IF Y$= "Y" THEN GOTO Calculate
IF Y$= "N" THEN GOTO Ask
GOTO zerodivtrap

Ask:
INPUT "Go again?  Y/N",Y$
IF Y$="Y" THEN GOTO Start
IF Y$="N" THEN END
GOTO Ask
