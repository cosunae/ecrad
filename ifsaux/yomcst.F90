! (C) Copyright 2014- ECMWF.
!
! This software is licensed under the terms of the Apache Licence Version 2.0
! which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
!
! In applying this licence, ECMWF does not waive the privileges and immunities
! granted to it by virtue of its status as an intergovernmental organisation
! nor does it submit to any jurisdiction.

MODULE YOMCST

USE PARKIND1  ,ONLY : JPRB

IMPLICIT NONE

PUBLIC

SAVE

! * RPI          : number Pi
REAL(KIND=JPRB), PARAMETER :: RPI = 3.14159265358979323846_JPRB
! * RSIGMA       : Stefan-Bolzman constant
REAL(KIND=JPRB), PARAMETER :: RSIGMA = 5.67037321e-8_JPRB ! W m-2 K-4
! * RG           : gravity constant
REAL(KIND=JPRB), PARAMETER :: RG = 9.80665_JPRB ! m s-2
! * RD           : R_dry (dry air constant)
REAL(KIND=JPRB), PARAMETER :: RD = 287.058_JPRB! J kg-1 K-1
! * RMD          : dry air molar mass
REAL(KIND=JPRB), PARAMETER :: RMD = 28.9644_JPRB
! * RMV          : vapour water molar mass
REAL(KIND=JPRB), PARAMETER :: RMV = 18.0153_JPRB
! * RMO3         : ozone molar mass
REAL(KIND=JPRB), PARAMETER :: RMO3 = 47.9942_JPRB
! * RI0          : solar constant
REAL(KIND=JPRB), PARAMETER :: RI0 = 1366.0_JPRB

END MODULE YOMCST
