program magnitudeVmag
implicit none
real ::  Vmag(7803), B_V(7803), junk
character(len=2):: mem
integer	:: n, i

 open(unit=100, file='list.dat', status='unknown')
 open(unit=200, file='graph.dat', status='unknown')


           n=5
    do i=1,n 
  
  	read(100, *) junk,junk,B_V(i), mem
       print *, B_V(i), mem



    end do 	
end program magnitudeVmag










!# RA  DEC  x(')  y(')  b-y  e(b-y)  V  e(V)  m1  e(m1)  c1  e(c1)  Hbeta e(Hbeta) mem



