module fp_ArgParser
   implicit none

contains

   function parse_args(argptr) result(val)
      class(*), allocatable :: val
      character(len=:), pointer, intent(in) :: argptr

      allocate(val, source=argptr)

   end function parse_args


end module fp_ArgParser
