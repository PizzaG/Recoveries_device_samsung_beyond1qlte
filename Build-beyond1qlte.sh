#!/bin/bash

## OrangeFox
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export OF_MAINTAINER=PizzaG
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export FOX_VERSION=0.1
export FOX_REMOVE_AAPT=1
export OF_CHECK_OVERWRITE_ATTEMPTS=1
. build/envsetup.sh
lunch omni_beyond1qlte-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/OrangeFox-*Unofficial-beyond1qlte.img /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-beyond1qlte.img
mv $OUT/OrangeFox-*Unofficial-beyond1qlte.img.md5 /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-beyond1qlte.img.md5
mv $OUT/OrangeFox-*Unofficial-beyond1qlte.img.tar /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-beyond1qlte.tar
mv $OUT/OrangeFox-*Unofficial-beyond1qlte.zip /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-beyond1qlte.zip
mv $OUT/OrangeFox-*Unofficial-beyond1qlte.zip.md5 /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-beyond1qlte.zip.md5
cd /media/pizzag/Android/Recoveries/OrangeFox/9
make clean
#############################
#############################

