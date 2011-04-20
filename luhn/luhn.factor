! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays grouping kernel math sequences sequences.deep ;
IN: luhn

: sum-digits ( n -- sum )
    10 /mod + ;

: double-every-other ( seq -- seq )
   2 <groups> [ first2 2 * 2array ] map flatten ;

: multiple-of-ten? ( n -- ? )
    10 mod 0 = ;

: luhn-sum ( seq -- n )
   double-every-other [ sum-digits ] map-sum ;

: luhn-valid? ( seq -- ? )
   unclip-last swap luhn-sum + multiple-of-ten? ;
