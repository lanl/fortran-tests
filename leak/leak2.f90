function fv_get(numcell) result(ret)
 integer, intent(in) :: numcell
 real, dimension(numcell,numcell) :: ret 
 integer :: k 
  
 do k = 1, numcell
    ret(k,k) = 10 
 enddo
end function 

program Leaker
implicit none 

interface
function fv_get(numcell) result(ret)
 integer, intent(in) :: numcell
 real, dimension(numcell,numcell) :: ret 
end function 
end interface 


real:: tmp 
integer::h,i
integer::max = 1000
do h = 1, max 
  do i = 1, max
    associate (fver => fv_get(max))
      tmp = fver(i,i) / sum(fver(:,10))
     end associate
     write(*,*) h,",",i
  enddo
enddo 


end program


