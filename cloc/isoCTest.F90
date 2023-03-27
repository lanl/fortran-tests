subroutine isoc_tester()
    use, intrinsic :: iso_c_binding
    implicit none

    character(len=:, kind=c_char), allocatable, target :: p_out

    type(c_ptr) :: b

    b = c_loc(p_out)

end subroutine
