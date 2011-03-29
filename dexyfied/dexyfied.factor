! Copyright (C) 2011 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: http.client json.reader kernel prettyprint strings multiline ;
IN: weblog.dexyfied

#! @export section-1
: test1. ( -- )
    "http://oohembed.com/oohembed/?url=http%3A//www.flickr.com/photos/fuffer2005/2435339994/"
    http-get nip >string json> . ;
