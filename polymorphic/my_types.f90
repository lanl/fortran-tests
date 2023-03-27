module my_types
  implicit none
  public my_t, cells_t, mesh_t

  type my_t
       integer i
  end type my_t

  type cells_t
       integer :: max_numcell
       integer  :: numcell_clone
       integer  :: mxcell
  end type cells_t
  
  type mesh_t
     class(cells_t), allocatable :: cells(:)
  end type mesh_t
 

end module my_types 