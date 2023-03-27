program reproducer
      use moo_interfaces_module, only : get_int
      use module_data, only : token_sum
      use my_types, only : cells_t, mesh_t
      
      implicit none
      
      integer :: i,j,k
      integer :: ret
      type(mesh_t) :: mesh

      i = 1; j = 1; k = 1
      allocate(mesh%cells(100))
      mesh%cells(1)%mxcell = 43
      
      print *, i,j,k 

      
      call token_sum(42, ltop_func, ret)
      print *, ret

      
      contains
      pure function ltop_func(n) result(ret)
      integer, intent(in) :: n
      integer :: ret
      ret = n+i+j+k + mesh%cells(1)%mxcell 
      end function ltop_func
      
      
end program reproducer
