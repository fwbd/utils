#!/bin/bash
# un-tar using parallel bzip2 if found

LBZIP=""
if command -v lbzip2 >/dev/null 2>&1; then
	LBZIP=" -I lbzip2"
fi

for fl in $@;
 do tar$LBZIP -xvf $fl;
done

