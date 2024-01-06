program magnitudeVmag
 implicit none
            real ::  Vmag(7803), B_V(7803), junk
 character(len=2)::mem
         integer	:: n, i

 open(unit=100, file='n1817bnstrom.dat', status='unknown')
 open(unit=200, file='graph.dat', status='unknown')

           n=7803
    do i=1,n 
  
      read(100,500) B_V(i), Vmag(i), mem
500 format(53x,F5.3,10x,F6.3,60x,A2)

    if (mem == ' M') then
      write(200,*) B_V(i), Vmag(i)
    endif
     
    end do 	
end program magnitudeVmag










!# RA  DEC  x(')  y(')  b-y  e(b-y)  V  e(V)  m1  e(m1)  c1  e(c1)  Hbeta e(Hbeta) mem



