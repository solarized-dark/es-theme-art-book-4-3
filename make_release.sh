#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 version_name" >&2
    exit 1
fi

_dirname=$(basename $PWD)
_zipname="es-theme-art-book-4-3_$1.zip"

pushd ..
zip -r $_zipname $_dirname/_inc $_dirname/splash.xml $_dirname/theme.xml
popd

mv ../$_zipname .

echo "Created $_zipname."
