#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="xed"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

which gnome-autogen.sh || {
    echo "You need to install gnome-common"
    exit 1
}


which yelp-build || {
    echo "You need to install yelp-tools"
    exit 1
}

REQUIRED_AUTOMAKE_VERSION=1.9
GNOME_DATADIR="$gnome_datadir"
USE_COMMON_DOC_BUILD=yes

. gnome-autogen.sh

