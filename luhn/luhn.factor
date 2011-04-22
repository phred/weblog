! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays grouping kernel math sequences sequences.deep ;
IN: weblog.luhn

#! @export double-every-other
: double-every-other ( seq -- seq-doubled )
    [ odd? [ 2 * ] when ] map-index ;

#! @export sum-digits
: sum-digits ( seq -- sum )
   [ 10 /mod + ] map sum ;

#! @export multiple-of-ten
: multiple-of-ten? ( n -- ? )
    10 mod 0 = ;


#! @export luhn-check
: luhn-check ( number-seq -- passes? )
    reverse                #! Moving from right to left,
    double-every-other     #! double every other digit.
    sum-digits             #! Add the digits of the sequence, then
    multiple-of-ten? ;     #! test that the result is evenly divisible by 10.

