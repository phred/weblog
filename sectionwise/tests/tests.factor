! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.
USING: weblog.sectionwise kernel ;

IN: weblog.sectionwise.tests

<section section
: example-word ( -- )
    <section tricky-business
        #! Here's a tricky section
        1 dup 2drop ;

    section>
section>

