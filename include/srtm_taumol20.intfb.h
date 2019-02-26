INTERFACE
SUBROUTINE SRTM_TAUMOL20&
 & ( KIDIA , KFDIA , KLEV,&
 & P_FAC00 , P_FAC01 , P_FAC10 , P_FAC11,&
 & K_JP , K_JT , K_JT1,&
 & P_COLH2O , P_COLCH4 , P_COLMOL,&
 & K_LAYTROP , P_SELFFAC, P_SELFFRAC, K_INDSELF , P_FORFAC, P_FORFRAC, K_INDFOR,&
 & P_SFLUXZEN, P_TAUG , P_TAUR , PRMU0&
 & ) 
USE PARKIND1 , ONLY : JPIM, JPRB
USE PARSRTM , ONLY : JPG
INTEGER(KIND=JPIM),INTENT(IN) :: KIDIA, KFDIA
INTEGER(KIND=JPIM),INTENT(IN) :: KLEV
REAL(KIND=JPRB) ,INTENT(IN) :: P_FAC00(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_FAC01(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_FAC10(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_FAC11(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_JP(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_JT(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_JT1(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_COLH2O(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_COLCH4(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_COLMOL(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_LAYTROP(KIDIA:KFDIA)
REAL(KIND=JPRB) ,INTENT(IN) :: P_SELFFAC(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_SELFFRAC(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_INDSELF(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_FORFAC(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(IN) :: P_FORFRAC(KIDIA:KFDIA,KLEV)
INTEGER(KIND=JPIM),INTENT(IN) :: K_INDFOR(KIDIA:KFDIA,KLEV)
REAL(KIND=JPRB) ,INTENT(OUT) :: P_SFLUXZEN(KIDIA:KFDIA,JPG)
REAL(KIND=JPRB) ,INTENT(OUT) :: P_TAUG(KIDIA:KFDIA,KLEV,JPG)
REAL(KIND=JPRB) ,INTENT(OUT) :: P_TAUR(KIDIA:KFDIA,KLEV,JPG)
REAL(KIND=JPRB) ,INTENT(IN) :: PRMU0(KIDIA:KFDIA)
END SUBROUTINE SRTM_TAUMOL20
END INTERFACE
