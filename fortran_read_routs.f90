!      subroutine read_matlab_unformatted_array(fname, n, a)
      implicit real *8 (a-h,o-z)
      character (len=1000) fname
      integer n
      real *8, allocatable :: a(:)
      real *8, allocatable :: b(:,:)

      fname = 'test_array_matlab.bin'
      
      open(unit=32, file=trim(fname), access='stream', form='unformatted')
      read(32) n
      print *, n
      allocate(a(n))
      read(32) a
      read(32) m1
      read(32) m2
      allocate(b(m1,m2))
      read(32) b
      close(32)

      print *, a(1:3)
      print *, b(1,1), b(1,2), b(2,1)
      

      stop
      end
