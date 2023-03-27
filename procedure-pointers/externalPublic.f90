module reproducer_module

    use proc_int, only : abs_int

    implicit none
    private
    save

    public func_ptr

    procedure(abs_int) , pointer :: func_ptr => func_ptr_default

    !public func_ptr

contains

    subroutine func_ptr_default(s)
        character(*), intent(in) :: s
        write(*,*) "Some Generic Text"
        write(*,*) s
        stop
     end subroutine func_ptr_default

end module reproducer_module