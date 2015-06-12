       subroutine mat_mult_it(A,B,AB,outer_dim1,outer_dim2,inner_dim)
	 integer outer_dim1,outer_dim2,inner_dim
         real*8 A(outer_dim1,inner_dim),B(inner_dim,outer_dim2)
	 real*8 AB(outer_dim1,outer_dim2)

	 integer i,j,k
		
         do 30 i=1,outer_dim1
	   do 20 j=1,outer_dim2
             AB(i,j) = 0.0
	     do 10 k=1,inner_dim
	       AB(i,j)=AB(i,j)+A(i,k)*B(k,j)
10	     continue
20	   continue
30	 continue
		
         return
       end
