program rainfall
implicit none
integer,parameter::Nmax=50
character(60)::s
character(30)::town(Nmax)
integer::rain(Nmax),z,N

call read_file(s,Nmax,town,rain,N)

print'(A60)',s

do z=1,N
  print'(A,T15,I3)',trim(town(z)),rain(z)
end do  


contains

subroutine read_file(s,Nmax,T,R,N)
  character(60),intent(out)::s
  integer,intent(in)::Nmax
  character(30),intent(out)::T(Nmax)   
  integer,intent(out)::R(Nmax),N
  integer::i,st

   open(10,file='data.txt')

    read(10,'(A60)')s
    
    do i=1,Nmax
      N=i-1
      read(10,*,iostat=st) T(i),R(i)
      
      if (st==-1) exit   
    end do

   close (10)
end subroutine read_file

end program