# $1->a $2->b,$3->c,$4->d,$5->e
#$6->3,$7->20,$8->i
add $1,$0,0
add $2,$0,1
add $7,$0,20
add $8,$0,0
add $6,$0,3
add $11,$0,10000
add $14,$0,100
add $12,$0,0
add $13,$0,0
Label1:
add $3,$1,0#c[i]=a[i]
add $4,$2,0#d[i]=b[i]
add $5,$3,$4#e[i]=c[i]+d[i]
sw $5,0
#loop
loop1:
add $13,$13,1
loop11:
add $12,$12,1
bne $12,$14,loop11
add $12,$0,0
bne $13,$11,loop1
add $13,$0,0
add $8,$8,1#i++
add $1,$1,$8#a[i+1]=a[i]+i+1
mul $9,$8,$6#b[i+1]=b[i]+3*(i+1)
add $2,$2,$9
bne $7,$8,Label1

add $7,$0,40
add $13,$0,0
add $12,$0,0
Label2:
add $3,$1,$2#c[i]=a[i]+b[i]
mul $4,$3,$1#d[i]=c[i]*a[i]
add $5,$3,$4#e[i]=c[i]+d[i]
sw $5,0
#loop
loop2:
add $13,$13,1
loop21:
add $12,$12,1
bne $12,$14,loop21
add $12,$0,0
bne $13,$11,loop2
add $13,$0,0
add $8,$8,1#i++
add $1,$1,$8#a[i+1]=a[i]+i+1
mul $9,$8,$6#b[i+1]=b[i]+3*(i+1)
add $2,$2,$9
bne $8,$7,Label2

add $7,$0,60
add $13,$0,0
add $12,$0,0
Label3:
mul $3,$1,$2
mul $4,$3,$2
add $5,$3,$4
sw $5,0
#loop
loop3:
add $13,$13,1
loop31:
add $12,$12,1
bne $12,$14,loop31
add $12,$0,0
bne $13,$11,loop3
add $13,$0,0
add $8,$8,1#i++
add $1,$1,$8#a[i+1]=a[i]+i+1
mul $9,$8,$6#b[i+1]=b[i]+3*(i+1)
add $2,$2,$9
bne $7,$8,Label3
 
