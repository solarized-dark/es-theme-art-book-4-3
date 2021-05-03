#!/bin/sh

mogrify -resize x480 -crop 640x480 ./_inc/systems/*.png
