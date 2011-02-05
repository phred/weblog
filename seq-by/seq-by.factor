! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.
USING: sequences accessors kernel arrays ;
IN: weblog.seq-by


TUPLE: seq-by seq quot ;
INSTANCE: seq-by sequence

: <seq-by> ( seq quot -- seq' ) \ seq-by boa ;

M: seq-by set-nth ( -- * ) "cannot modify sequence" throw ;

M: seq-by length seq>> length ;

M: seq-by nth ( n seq -- elt )
    [ seq>> nth ] [ seq>> nth ] [ nip quot>> ] 2tri call( elt -- elt' ) swap 2array ;
