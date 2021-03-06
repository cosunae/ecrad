! (C) Copyright 2014- ECMWF.
!
! This software is licensed under the terms of the Apache Licence Version 2.0
! which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
!
! In applying this licence, ECMWF does not waive the privileges and immunities
! granted to it by virtue of its status as an intergovernmental organisation
! nor does it submit to any jurisdiction.

subroutine run_fortran_omp_parallel_ipfstr(NTIDS, FUNC, CDSTR)
use parkind1, only : JPIM
implicit none
INTEGER(KIND=JPIM), INTENT(IN) :: NTIDS
EXTERNAL :: FUNC
CHARACTER(LEN=*), INTENT(IN) :: CDSTR
!$OMP PARALLEL NUM_THREADS(NTIDS)
CALL FUNC(CDSTR)
!$OMP END PARALLEL
end subroutine run_fortran_omp_parallel_ipfstr

subroutine run_fortran_omp_parallel_ipfipipipdpstr(NTIDS, FUNC, KTIDS, TARGET_OMPTID, TARGET_SIG, START_TIME, CDSTR)
use parkind1, only : JPIM, JPRD
implicit none
INTEGER(KIND=JPIM), INTENT(IN) :: NTIDS, KTIDS, TARGET_OMPTID, TARGET_SIG
REAL(KIND=JPRD), INTENT(IN) :: START_TIME
CHARACTER(LEN=*), INTENT(IN) :: CDSTR
EXTERNAL :: FUNC
!$OMP PARALLEL NUM_THREADS(NTIDS)
CALL FUNC(KTIDS, TARGET_OMPTID, TARGET_SIG, START_TIME, CDSTR)
!$OMP END PARALLEL
end subroutine run_fortran_omp_parallel_ipfipipipdpstr

subroutine get_openmp(kopenmp)
use parkind1, only : JPIM
implicit none
INTEGER(KIND=JPIM), INTENT(out) :: kopenmp
#ifdef _OPENMP
kopenmp = _OPENMP
#else
kopenmp = 0
#endif
end subroutine get_openmp
