function fv_get(numcell) result(ret)
  integer, intent(in) :: numcell
  real, dimension(numcell) :: ret 
  integer :: k 
    
  do k = 1, numcell
    ret(k) = 10 
  enddo
end function 

program Leaker
  implicit none 

  interface
    function fv_get(numcell) result(ret)
      integer, intent(in) :: numcell
      real, dimension(numcell) :: ret 
    end function 
  end interface 

  real:: tmp 
  integer :: i

  do i=1,100000000
    associate (fver => fv_get(100000000))
      tmp = sum(fver) / sum(fver)
    end associate
    write(*,*)i
  enddo
end program
