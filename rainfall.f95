program rainfall
implicit none
integer,parameter::N=5
character(60)::s
character(30)::town(N)
integer::rain(N),st,i

open(10,file='data.txt')

  read(10,'(A60)') s

  do i=1,N
    read(10,*) town(i),rain(i)  
  end do

close (10)

print'(A60)',s

do i=1,N
  print'(A,T15,I3)',trim(town(i)),rain(i)
end do  

end program