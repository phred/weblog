! Copyright (C) 2011 Fred Alger.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel vocabs.parser lexer namespaces
       accessors assocs vectors sequences hashtables ;

IN: weblog.sectionwise

TUPLE: code-section name start-line end-line vocab ;

: sectionwise-sections ( -- sections )
    H{ } ;

: current-section ( -- section-stack )
    V{ } ;

SYNTAX: <section
    lexer get
    [ parse-token ] [ line>> ] [ next-line ] tri 0 current-vocab
            \ code-section boa

    [ dup name>> current-vocab name>> sectionwise-sections [ ?set-at ] change-at ]
    [ name>> current-section push ] bi ;

SYNTAX: section>
    lexer get
    [ line>> ] [ next-line ] bi
    current-section pop
    current-vocab name>>
    sectionwise-sections at at
    end-line<< ;

: vocab-sections ( vocab-name -- seq )
    sectionwise-sections at ;

