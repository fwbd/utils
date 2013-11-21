utils
=====

A random asortment of utility scripts from my ~/bin/

packing
-------

All these scripts make use of parallel version of bzip2 (lbzip2) if it's available in the system.

* **backpack.sh** - tar.bzip2 one or more directories adding a timestamp  
`backpack.sh dir*` => `dir*_yymmdd.tar.bz2`
* **pack.sh** - tar.bzip2 one or more directories  
`pack.sh dir*` => `dir*.tar.bz2`
* **packd.sh** - like **pack.sh**, but delete the original directory afterwards
* **unpack.sh** - unpack one or more tar.bz2
* **unzipinto.sh** - unzip one or more files into directories created form the zip filenames  
`unzipinto.sh name*.zip` => `name*/<unpacked files>`
