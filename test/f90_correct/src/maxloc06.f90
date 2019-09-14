!
! Copyright (c) 2019, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.

! 2d int array, maxloc with back

program main
  integer :: res(2)
  integer, dimension(4,4) :: array
  integer :: expect(2)
  array = reshape((/4,2,9,-7,9,1,5,5,8,-1,-1,5,-7,5,9,-7/),shape(array))
  res = maxloc(array,back=.true.)
  expect = (/3,4/)
  call check(res, expect, 2)
  !print *, "base=true:", res
  res = maxloc(array,back=.false.)
  expect = (/3,1/)
  call check(res, expect, 2)
  !print *, "back=false:", res
end
