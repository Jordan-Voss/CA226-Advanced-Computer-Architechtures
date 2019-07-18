.data

LENGTH: .word 0

Triangle: .word 11 ; Triangle[0]

          .word 22 ; Triangle[1]

          .word 33 ; Triangle[2]



.text



 daddi r1, r0, 0    ;index into array

 daddi r3, r0, 24   ;check when to stop

 daddi r4, r0, 0   ; Length = 0;





repeat:

 ld r5, Triangle(r1)    ;load first element in





 beq r1, r3, end ; XXX
 nop

 dadd r4,r4,r5    ;sum = sum + Triangle[i]

 daddi r1, r1,8        ; next index

 j repeat             ; XXX
 nop



end:

 sd r4, LENGTH(r0)

halt
