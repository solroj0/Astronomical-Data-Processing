program FunWayToSpendTheWeekend
 implicit none
    real:: m_Mt, r_Rt, p_Pc, Rt, hell, r_index, m_index, mcorrected,rcorrected
 integer:: r

 open(unit=10, file='mass_distribution.dat',status='unknown')    
 open(unit=20, file='test_graph.dat' ,      status='unknown')    
 open(unit=30, file='pressure_profile.dat', status='unknown')
 open(unit=50, file='indexL_data.dat',      status='unknown')
 open(unit=40, file='indexL_plot.dat',      status='unknown')

!   skip first rows of document

    do r=0,13 ; read(50,*); end do 

!   begin do loop with the amount of lines after skip in file

    do r=0,433; Rt=433

        p_Pc = 1 - (r/Rt)**(2)
        m_Mt = (r/Rt)**(3.0)
        r_Rt = (r/Rt) 
        hell = (2*(Rt/10)**3.  -(Rt/10)*exp(-r*10/Rt)*      &
               (2*(Rt/10)**2 +2*(Rt/10)*r+r**2))/161915.812 
       
!   textbook IndexL data       

          read (50,60) r_index, m_index 
60      format (7x,E9.3,13x,E9.3)        
               
               mcorrected = -1*(m_index-1)    
               rcorrected = r_index/737200000.
        
        write (10,*) r_Rt, m_Mt
        write (20,*) r_Rt, hell
        write (30,*) r_Rt, P_Pc
        write (40,*) rcorrected, mcorrected 
    end do
end program FunWayToSpendTheWeekend
