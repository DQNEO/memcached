#!/bin/sh
#
# This is hacky, because there are so many damn versions
# of autoconf/automake.  It works with Debian woody, at least.
#
# Debian sarge:
#    apt-get install automake1.7 autoconf
#

echo "aclocal..."
ACLOCAL=aclocal-1.7
$ACLOCAL || aclocal-1.5 || aclocal || exit 1

echo "autoheader..."
AUTOHEADER=autoheader
$AUTOHEADER || exit 1

echo "automake..."
AUTOMAKE=automake-1.7
$AUTOMAKE --foreign --add-missing || automake --gnu --add-missing || exit 1

echo "autoconf..."
AUTOCONF=autoconf
$AUTOCONF || exit 1

