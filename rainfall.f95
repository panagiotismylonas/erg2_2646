program rainfall
implicit none
integer,parameter::Nmax=50
character(60)::s
character(30)::town(Nmax)
integer::rain(Nmax),st,i,N

open(10,file='data.txt')

  read(10,'(A60)') s

  do i=1,Nmax
    N=i-1
    read(10,*,iostat=st) town(i),rain(i)  
    
    if (st==-1) exit   
  end do

close (10)

print'(A60)',s

do i=1,N
  print'(A,T15,I3)',trim(town(i)),rain(i)
end do  

end program