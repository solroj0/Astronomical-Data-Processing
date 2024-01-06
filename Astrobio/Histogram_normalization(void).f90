program ifread
 implicit none
    real:: rowid, pl_pnum, pl_bmassj, st_teff, st_mass, st_rad, st_metfe, st_bmvj, mass
 integer:: r
 
 open(unit=100,file='planets.tbl',  status='unknown')    
 open(unit=200,file='histogram.dat',status='unknown')    

    do r=0,1 ; read(100,*); end do 

    do r=0,3532
      
       read (100,*) rowid, pl_pnum, pl_bmassj, st_teff, st_mass, st_rad, st_metfe, st_bmvj 
!500  format (7x,E9.3,13x,E9.3) 

    if(character(pl_bmassj)=="null") then 
       mass=""
    else mass=pl_bmassj; end if

       write(*,*) rowid, pl_pnum, pl_bmassj, st_teff, st_mass, st_rad, st_metfe, st_bmvj 


    end do 	
end program ifread


O 30000 60000
B 10000
A 7500
F 6000
G 5000
K 3500
M <3500
