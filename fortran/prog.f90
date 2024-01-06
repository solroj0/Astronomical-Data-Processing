program problema5
implicit none

real :: b_y1(7842), v(7842), b_y, m_M, Mv, sun_color, dist, m_sun
integer :: i, id
character(len=2) :: d
character(len=132) :: header

open(unit=100, file='n1817bnstrom.dat', status='unknown')
open(unit=200, file='grafica.dat', status='unknown')
open(unit=300, file='ids.dat', status='unknown')


	read(100,29) header
29	format(a132)

!read in file, separate members and write id's, color, v magnitude and membership into file 200
   do i=1,7842
	read(100, 44) id, b_y1(i), v(i), d
44	format(1x,I4,48x,F5.3,10x,F7.3,59x,A2)

	if(d ==' M') then
	  write(200,*) b_y1(i), v(i)
	  print*, id, b_y1(i), v(i), d
	end if

!separate cluster member main sequence stars with V < 15.5
	if(v(i) .gt. 15.5 .and. d == ' M') then
	  write(300,*) id
	end if
   end do

end program problema5
