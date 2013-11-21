#!/bin/bash
# pack given directories into "dirname_yymmdd.tar.bz2"

# if found, uses parallel bzip2
LBZIP=""
if command -v lbzip2 >/dev/null 2>&1; then
	LBZIP=" -I lbzip2"
fi

for fl in $@;
 do tar$LBZIP -cvf ${fl%/}_`date +%y%m%d`.tar.bz2 ${fl};
done

