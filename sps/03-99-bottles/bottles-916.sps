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
           B7   START
     EMPTY WATY MSG8
           RCTY 
           H
           B7   EMPTY
     DBRET DC  5,0
     DBEERSCM  BEERS,10
           BNL DBEER2
           WNTYBEERS
           CM  BEERS,1
           BNE DBEERS4
           WATYBTL
           B7  -DBRET
     DBEER2WNTYBEERS-1
     DBEER4WATYBTLS
           B7  -DBRET
     BEERS DC  5,99
           DC  1,@
     BTLS  DAC 8, BOTTLES
           DAC 1,@
     BTL   DAC 8, BOTTLE@
     MSG2  DAC 8, OF BEER
           DAC 8, ON THE
           DAC 6,WALL.@
     MSG4  DAC 8, OF BEER
           DAC 2,.@
     MSG6  DAC 8,TAKE ONE
           DAC 7, DOWN, 
           DAC 8,PASS IT
           DAC 8,AROUND -
           DAC 1,@
     MSG8  DAC 8,NO MORE
           DAC 6,BEER.@
