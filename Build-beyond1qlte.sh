#!/bin/bash

## RedWolf
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_beyond1qlte-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/RedWolf-PizzaG-beyond1qlte.img /media/pizzag/Android/Uploads/Recoveries/RedWolf_Recovery-beyond1qlte.img
mv $OUT/RedWolf-PizzaG-beyond1qlte.img.md5 /media/pizzag/Android/Uploads/Recoveries/RedWolf_Recovery-beyond1qlte.img.md5
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/RedWolf_Recovery-beyond1qlte.tar
cd /media/pizzag/Android/Recoveries/RedWolf/8
make clean
#############################
#############################

