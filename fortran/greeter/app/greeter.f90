program greeter
  implicit none

  character(len=256) :: username
  call input_handler(username)

  call greet(username)

contains

  subroutine input_handler(user_name)
    character(len=256), intent(out) :: user_name
    character(len=256) :: userinput
    character(len=256) :: name

    write(*, '(a)', advance='no') 'Enter your name: '
    read(*, '(a)') userinput

    name = trim(adjustl(userinput))

    if (len_trim(name) == 0) then
      name = 'Stranger'
    end if

    user_name = trim(name)
  end subroutine input_handler

  subroutine greet(greet_username)
    character(len=256), intent(in) :: greet_username

    write(*, "('Hello, ', a, '!')") trim(greet_username)
    write(*, "('Greetings from Fortran!')")
  end subroutine greet

end program greeter
