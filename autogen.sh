#! /bin/bash

aclocal
autoconf
automake --add-missing
autoreconf
./configure
make
