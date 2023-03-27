module proc_int

    implicit none
    private

    public abs_int

    abstract interface
        subroutine abs_int(s)
            character(*), intent(in) :: s
        end subroutine abs_int
    end interface

end module proc_int