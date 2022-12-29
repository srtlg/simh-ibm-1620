     * BOTTLES OF BEER PROGRAM FOR THE IBM 1620 MODEL I
     *
     * HAMMERS THE WHOLE THING OUT ON THE CONSOLE TYPEWRITER.
     *
     * A MISERABLE WASTE OF TIME ON 10/2005 BY
     *        CHUCK GUZIS   CHUCK @ SYDEX.COM
     * MODIFIED TO BE ASSEMBLED AND EXECUTED IN SIMH 12/2022 BY
     *        MIRKO SCHOLZ
     *
     * THIS CODE HERE CAN BE ASSEMBLED WITH TAPE SP021 FOUND ON BITSAVERS
     *
     * IF YOU,RE GOING TO RUN THIS ON THE CADET, YOU NEED TO HAVE AT LEAST
     * THE ADDITION TABLES LOADED.  INDIRECT ADDRESSING IS USEFUL, BUT NOT
     * ABSOLUTELY NECESSARY (SEE NOTE BELOW).
     *
           DORG00402
     START RCTY                ,,, RETURN CARRIAGE
           BTM DBEERS,*+12     ,,, SHOW COUNT
           WATYMSG2            ,,, OF BEER ON...
           RCTY                ,,, RETURN CARR.
           BTM DBEERS,*+12     ,,, SHOW COUNT
           WATYMSG4            ,,, OF BEER.
           RCTY                ,,, ZZZZIP...
           WATYMSG6            ,,, TAKE ONE DOWN
           RCTY                ,,, ZZZIP...
           SM  BEERS,1         ,,, A DEAD SOLDIER
           BZ  EMPTY           ,,, IF ALL GONE
           BTM DBEERS,*+12     ,,, SHOW COUNT
           WATYMSG2            ,,, ON THE WALL
           RCTY                ,,, ZZZZZIP...
           B   START           ,,, DO IT AGAIN
     EMPTY WATYMSG8            ,,, NO MORE BEER
           RCTY                ,,, ZZZZIP...
           H                   ,,, STOP
           B   EMPTY           ,,, IN CASE RUN PUSHED
     *
     * SUBROUTINE TO DISPLAY BOTTLE COUNT AND EITHER *BOTTLE* OR *BOTTLES*
     *
     * THIS ASSUMES THAT THE INDIRECT ADDRESSING FEATURE IS PRESENT, BUT
     * IF NOT, SIMPLY USE A BB (42) INSTRUCTION IN PLACE OF THE INDIRECT
     * BRANCHES.
     *
     DBRET DC  5,0             ,,, RETURN ADD
     DBEERSCM  BEERS,10        ,,, DISPLAY BOTTLES
           BNL DBEER2          ,,, 10 OR MORE
           WNTYBEERS           ,,, 1 DIGIT
           CM  BEERS,1         ,,, JUST 1 
           BNE DBEER4          ,,, NO, *BOTTLES*
           WATYBTL             ,,, SAY *BOTTLE*
           B   -DBRET          ,,, EXIT
     DBEER2WNTYBEERS-1         ,,, 2 DIGITS
     DBEER4WATYBTLS            ,,, SAY BOTTLES
           B   -DBRET          ,,, EXIT
     BEERS DC  5,99            ,,, BOTTLE COUNT
           DC  1,@
     BTLS  DAC 9, BOTTLES@
     BTL   DAC 8, BOTTLE@
     MSG2  DAC 22, OF BEER ON THE WALL.@
     MSG4  DAC 10, OF BEER.@
     MSG6  DAC 32,TAKE ONE DOWN, PASS IT AROUND -@
     MSG8  DAC 14,NO MORE BEER.@
           DENDSTART
