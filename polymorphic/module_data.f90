module module_data
      use moo_interfaces_module, only: get_int 
      contains     


      subroutine token_sum(numtmp, ltmp, result)
      integer, intent(in) :: numtmp
      procedure(get_int):: ltmp
      integer, intent(out) :: result
      result = ltmp(numtmp)
      end subroutine token_sum
  
end module module_data
