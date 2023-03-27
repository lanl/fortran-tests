module fp_ArgParser
   implicit none

contains

   function parse_args(arg) result(val)
      class(*), allocatable :: val
      character(len=*), intent(in) :: arg

      val = arg

   end function parse_args


end module fp_ArgParser
