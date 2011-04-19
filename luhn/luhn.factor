! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.
USING: grouping kernel sequences math ;
IN: luhn

: digits ( n -- tens ones )
    10 /mod ;

: double-every-other ( seq -- seq )
   2 <sliced-groups> [ first2 swap 2 * digits + + ] map ;

: multiple-of-ten? ( n -- ? )
    10 mod 0 = ;

: luhn-valid? ( seq -- ? )
   reverse                     #! Proceed from left to right
   unclip                      #! Set aside the check digit
   [ double-every-other sum ] dip +
   multiple-of-ten? ;
