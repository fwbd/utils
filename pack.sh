#!/bin/sh
# pack given directories into "dirname.tar.bz2"

# if found, uses parallel bzip2
LBZIP=""
if command -v lbzip2 >/dev/null 2>&1; then
	LBZIP=" -I lbzip2"
fi

for fl in $@;
 do tar$LBZIP -cvf ${fl%/}.tar.bz2 ${fl};
done

