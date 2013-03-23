#!/bin/sh
#
# This is hacky, because there are so many damn versions
# of autoconf/automake.  It works with Debian woody, at least.
#
# Debian sarge:
#    apt-get install automake1.7 autoconf
#

echo "aclocal..."
aclocal || exit 1

echo "autoheader..."
autoheader || exit 1

echo "automake..."
automake --gnu --add-missing || exit 1

echo "autoconf..."
autoconf || exit 1

