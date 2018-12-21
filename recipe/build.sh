#!/bin/bash

 export LIBS="-lm -lcblas -lopenblas"
./configure --prefix=${PREFIX}  \
            --host=${HOST}

make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install

# We can remove this when we start using the new conda-build.
find $PREFIX -name '*.la' -delete
