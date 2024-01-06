program Conservation
 implicit none
    real:: m_Mt, r_Rt, p_Pc, Rt, hell, rfile, mstar
 integer:: r
 
 open(unit=100,file='con.dat',status='unknown')    
 open(unit=200,file='tes.dat',status='unknown')    
 open(unit=300,file='app.dat' ,status='unknown')
 open(unit=600,file='gra.dat',status='unknown')

    do r=0,13 ; read(300,*); end do 

    do r=0,433;   Rt=433
      
       read (300,500) rfile, mstar 
500  format (7x,E9.3,13x,E9.3)        
      write (600,*) rfile/737200000., mstar
            
        p_Pc = (r/Rt)**(-1.)
        m_Mt = (r/Rt)**(3.0)
        r_Rt = (r/Rt)
        hell = exp((Rt-r)/Rt) * (((Rt/100)**2 +( Rt/100 +r)**2)/(122./100.*Rt)**2)
        
       write(100,*) r_Rt, m_Mt, hell, mstar
       write(200,*) r_Rt, P_Pc
       !open file as " xmgrace -nxy file.dat"

    end do 	
end program Conservation
