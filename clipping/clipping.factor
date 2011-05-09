! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.

USING: namespaces strings ui.clipboards ui.operations ;
IN: clipping

: copy ( str -- )
    clipboard get set-clipboard-contents ;

[ string? ] \ copy H{ } define-operation
