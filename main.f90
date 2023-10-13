program collatz_sequence
  implicit none
  real :: i
  integer :: n

  write(*,*) "Enter a positive integer: "
  read(*,*) i

  if (i - int(i) == 0 .and. i > 0) then
    n = int(i)
    if (n > 0) then
      do while (n /= 1)
        if (mod(n, 2) == 0) then
          n = n / 2
        else
          n = 3 * n + 1
        end if
        write(*,*) " ", n
      end do
      write(*,*)
    end if
  else
    write(*,*) "Please Enter a positive integer."
  end if

end program collatz_sequence
