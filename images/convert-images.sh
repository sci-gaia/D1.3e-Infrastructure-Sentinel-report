#!/bin/bash
IMAGES=`find . -name "*.svg" -exec basename {} \; `
for image in ${IMAGES} ; do
  inkscape -z -e  ${image%.svg}.png -w 1024  ${image}
done
