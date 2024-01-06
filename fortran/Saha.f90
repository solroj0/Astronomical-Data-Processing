program SahaRatios
 implicit none
    real :: N21, N32, N1, N2, N3
 integer :: T 
 
 open(unit=100, file='SahaRatios.dat', status='unknown')       

    do T=3000, 10000, 100
      N21=(0.044836)*T**(5./2.)*exp(-91743.0/T)
      N32=(0.044836)*T**(5./2.)*exp(-167863./T)    
       N1=1/(1+    N21  +   N32*N21)   
       N2=1/(1+ (1/N21) +   N32)
       N3=1/(1+ (1/N21) +1/(N32*N21))
            
       write(100,*) T, N1, N2, N3
      !open file as " xmgrace -nxy file.dat"

    end do 	
end program SahaRatios
