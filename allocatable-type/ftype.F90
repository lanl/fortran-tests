      program main

      integer, parameter :: N = 7
    
      type(real(kind=4)), allocatable :: x(:)
      integer :: i

      allocate(x(N))
      do i = 1, N
        x(i) = real(i, 4) / real(N, 4)
      end do
      write (*,*) "x = ", x

      end program main
