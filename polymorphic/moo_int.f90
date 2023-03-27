module moo_interfaces_module
       implicit none
             
      interface
         pure integer function get_int(n)
           integer, intent(in) :: n
         end function get_int
      end interface



end module moo_interfaces_module