; file ps.as
.entry LENGTH
.extern W
MAIN: mov @r3 ,LENGTH,@r9
LOOP: jmp L1
prn -5
bne W
sub @r1, @r4 13213
bne L3321
L1: inc K2
.entry LOOP
jmp W
1END: stop
STR: .string "abcdef"
$@LENGTH: .data 6,-9,15
K: .data 22
.extern L3
