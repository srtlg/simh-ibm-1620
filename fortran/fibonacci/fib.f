      ACCEPT 11,I
   11 FORMAT(12HTYPE TARGET I3)
      SQRT5=SQRTF(5.0)
      PHI=(1.0 + SQRT5)/2.0
      PSI=(1.0 - SQRT5)/2.0
      DO 12 N=1,I
      F=(PHI**N - PSI**N)/SQRT5
      PRINT 13, N, F
   12 CONTINUE
   13 FORMAT(I3,1X,E7.3)
      END
