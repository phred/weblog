! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.

USING: io.streams.string json.writer kernel namespaces present
prettyprint strings ui.clipboards ui.operations ;
IN: weblog.clipping

#! @export clipboardify
: >clipboard ( str -- )
    clipboard get set-clipboard-contents ;


#! @export copy
: copy ( obj -- )
  unparse >clipboard ;

[ drop t ] \ copy H{ } define-operation


#! @export copy-json
: copy-json ( obj -- )
  >json >clipboard ;

[ string? not ] \ copy-json H{ } define-operation
