program     FunWayToSpendTheWeekend
 implicit none
    real:: junk, metal, noise, noise2, noise3, noise4
 integer:: r

 open(unit=10, file='transit2.dat',status='unknown')    
 open(unit=20, file='noise1.dat'  ,status='unknown')    
 open(unit=30, file='noise2.dat'  ,status='unknown')    
 open(unit=40, file='noise3.dat'  ,status='unknown')    
 open(unit=50, file='noise4.dat'  ,status='unknown')       

    do  r=0,1459       
        read (10,*) junk, metal
       
        noise = metal + (rand()/5.0 -0.1)
        noise2= noise + (rand()/5.0 -0.1)
        noise3= noise2+ (rand()/5.0 -0.1)
        noise4= noise3+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1) &
                      + (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)+ (rand()/5.0 -0.1)
                      

        write(20,*) junk, noise
        write(30,*) junk, noise2
        write(40,*) junk, noise3
        write(50,*) junk, noise4
   
    end do
end program FunWayToSpendTheWeekend
