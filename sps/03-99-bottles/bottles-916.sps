           DORG 402
     START RCTY  
           BTM  DBEERS,*+12
           WATY MSG2
           RCTY 
           BTM  DBEERS,*+12
           WATY MSG4
           RCTY
           WATY MSG6
           RCTY 
           SM   BEERS,1
           BZ   EMPTY
           BTM  DBEERS,*+12
           WATY MSG2
           RCTY 
           B    START
     EMPTY WATY MSG8
           RCTY 
           H    ,,,
           B    EMPTY
     DBRET DC  5,0
     DBEERSCM  BEERS,10
           BNL DBEER2
           WNTYBEERS
           CM  BEERS,1
           BNE DBEER4
           WATYBTL
           B   -DBRET
     DBEER2WNTYBEERS-1
     DBEER4WATYBTLS
           B   -DBRET
     BEERS DC  5,99
           DC  1,@
     BTLS  DAC 9, BOTTLES@
     BTL   DAC 8, BOTTLE@
     MSG2  DAC 22, OF BEER ON THE WALL.@
     MSG4  DAC 10, OF BEER.@
     MSG6  DAC 32,TAKE ONE DOWN, PASS IT AROUND -@
     MSG8  DAC 14,NO MORE BEER.@
           DENDSTART
