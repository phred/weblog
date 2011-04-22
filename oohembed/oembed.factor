! Copyright (C) 2011 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: http.client json.reader kernel prettyprint strings multiline ;
IN: weblog.oembed

#! @export section-1
: test1. ( -- )
    "http://oohembed.com/oohembed/?url=http%3A//www.amazon.com/Myths-Innovation-Scott-Berkun/dp/0596527055/"
    http-get nip >string json> . ;
