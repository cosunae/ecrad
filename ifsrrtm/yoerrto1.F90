MODULE YOERRTO1

USE PARKIND1  ,ONLY : JPIM     ,JPRB, JPRD

IMPLICIT NONE

PUBLIC

SAVE

!     -----------------------------------------------------------------
!*    ** *YOERRTO1* - RRTM ORIGINAL COEFFICIENTS FOR INTERVAL 1
!     BAND 1:  10-250 cm-1 (low - H2O; high - H2O)
!     ABozzo may 2013 update to rrtmg v4.85
!     band 1:  10-350 cm-1
!     -----------------------------------------------------------------

INTEGER(KIND=JPIM), PARAMETER :: NO1  = 16

REAL(KIND=JPRB) :: FRACREFAO(NO1)  , FRACREFBO(NO1)
REAL(KIND=JPRB) :: KAO(5,13,NO1)
REAL(KIND=JPRB) :: KBO(5,13:59,NO1)
REAL(KIND=JPRD) :: KAO_D(5,13,NO1)
REAL(KIND=JPRD) :: KBO_D(5,13:59,NO1)
REAL(KIND=JPRB) :: KAO_MN2(19,NO1) , KBO_MN2(19,NO1)
REAL(KIND=JPRB) :: SELFREFO(10,NO1), FORREFO(4,NO1)


!     -----------------------------------------------------------------
!        * E.C.M.W.F. PHYSICS PACKAGE ** RRTM LW RADIATION **

!     J.-J. MORCRETTE       E.C.M.W.F.      98/07/14

!  NAME     TYPE     PURPOSE
!  ----   : ----   : ---------------------------------------------------
!FRACREFAO: REAL    
!FRACREFBO: REAL
! FORREFO : REAL
! KAO     : REAL     
! KBO     : REAL     
! SELFREFO: REAL     
!     -----------------------------------------------------------------
END MODULE YOERRTO1
