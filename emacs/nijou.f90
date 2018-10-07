!
! n の階乗 n! を計算する
!
program nijou
  implicit none
  integer :: n, i　　         　!初期値を指定する場合には型名と変数の間にコロンが2つ必要
  real(8) :: tmp               !tmp;temporary"一時的な"の意

  write(*,*) 'Input an integer (N >= 0):' !この文を表示
  read(*,*) n

  ! n が負の場合は stop 文でプログラムを途中終了
  if (n < 0) then
     write(*,*) 'N must be >= 0' !「Nは正にしなさい」と表示しプログラム終了
     stop
  end if                         !if文終了 

  tmp = 1.0d+0
  do i = 1, n　　　　　　　　　　　 !iが1から100までループ
     tmp = tmp * i               !左辺tmpに右辺tmp * iを入れる
  end do                         !ループ終了

  write(*,*) 'N! = ', tmp !結果を表示。''の中身が表示され、カンマの後にループ計算の結果を表示

  stop
end program nijou
