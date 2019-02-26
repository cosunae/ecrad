INTERFACE
SUBROUTINE SRTM_TAUMOL26&
 & ( KIDIA , KFDIA , KLEV,&
 & P_COLMOL ,K_LAYTROP,&
 & P_SFLUXZEN, P_TAUG , P_TAUR , PRMU0&
 & ) 
USE PARKIND1 , ONLY : JPIM, JPRB
USE PARSRTM , ONLY : JPG
INTEGER(KIND=JPIM),INTENT(IN) :: KIDIA, KFDIA
INTEGER(KIND=JPIM),INTENT(IN) :: KLEV
REAL(KIND=JPRB) ,INTENT(IN) :: P_COLMOL(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_LAYTROP(KIDIA:KFDIA)
REAL(KIND=JPRB) ,INTENT(OUT) :: P_SFLUXZEN(KIDIA:KFDIA,JPG)
REAL(KIND=JPRB) ,INTENT(OUT) :: P_TAUG(KIDIA:KFDIA,KLEV,JPG)
REAL(KIND=JPRB) ,INTENT(OUT) :: P_TAUR(KIDIA:KFDIA,KLEV,JPG)
REAL(KIND=JPRB) ,INTENT(IN) :: PRMU0(KIDIA:KFDIA)
END SUBROUTINE SRTM_TAUMOL26
END INTERFACE
