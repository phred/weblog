! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.

USING: io.streams.string json.writer kernel namespaces present
prettyprint strings ui.clipboards ui.operations ;
IN: weblog.clipping


: prettyprint ( obj -- str )
    [ pprint ] with-string-writer ;

: >clipboard ( str -- )
    clipboard get set-clipboard-contents ;

: copy ( obj -- )
  prettyprint >clipboard ;

: copy-json ( obj -- )
  >json >clipboard ;

[ drop t ] \ copy H{ } define-operation
[ string? not ] \ copy-json H{ } define-operation
