#a0-t1,b0-t2,c0-t5
  add $t1,$0,1
  add $t2,$0,0
  add $t3,$0,19#
  add $t4,$0,1
  add $t6,$0,0#39
  add $t7,$0,59
  add $t8,$0,10000
  add $t0,$0,1000
  add $t9,$0,0
label1:
  add $t5,$t1,0
  sw  $t5,1($0)

  add $t1,$t1,2#a[i]=a[i-1]+2;
  add $t2,$t2,$t4#b[i]=b[i-1]+i;
  add $t4,$t4,1
  bne $t3,$t4,label1#i!=19,label
  
  add $t1,$t1,2 #i==19
  add $t2,$t2,$t4
  add $t5,$t1,0
  sw  $t5,1($0)
  
  add $t9,$0,0
  add $t6,$0,39
  add $t3,$0,0
label2:
  add $t4,$t4,1#i==20
  add $t1,$t1,2#a[i]=a[i-1]+2;
  add $t2,$t2,$t4#b[i]=b[i-1]+i;
  add $t5,$t2,0
  sw  $t5,1($0)
  
  bne $t4,$t6,label2
  
  add $t9,$0,0
  add $t3,$0,0
 label3:
   add $t4,$t4,1#i==40
   add $t1,$t1,2#a[i]=a[i-1]+2;
   add $t2,$t2,$t4#b[i]=b[i-1]+i; 
   add $t5,$t1,$t2
   sw  $t5,1($0)
   
   bne $t4,$t7,label3
