#!/usr/bin/env bash
DEVDIR="$(dirname "$(readlink -f "$0")")"
SAVEDIR=/media/SHARE/saves/devilutionx
SAVEDIRL1="$SAVEDIR/levels"
SAVEDIRL2="$SAVEDIR/nlevels"
RNDTOWN=5
RNDLVL1=66
RNDLVL2=74
RNDLVL3=58
RNDLVL4=46
RNDLVL5=74
RNDLVL6=79
cd ${DEVDIR}/palette/zfolders &&
find . -type d -exec mkdir -p -- ${SAVEDIR}/{} \;
echo ----------------------
echo Randomize Town Palette
echo ----------------------
NUM1=$((1 + RANDOM % $RNDTOWN))
rm ${SAVEDIRL1}/towndata/town.pal &>/dev/null
cp ${DEVDIR}/palette/towndata/town_${NUM1}.pal ${SAVEDIRL1}/towndata/town.pal
echo palette/towndata/town_${NUM1}.pal towndata/town.pal
echo --------------------------------
echo Randomize Level 1 Palette Church
echo --------------------------------
rm ${SAVEDIRL1}/l1data/l1_1.pal &>/dev/null
rm ${SAVEDIRL1}/l1data/l1_2.pal &>/dev/null
rm ${SAVEDIRL1}/l1data/l1_3.pal &>/dev/null
rm ${SAVEDIRL1}/l1data/l1_4.pal &>/dev/null
rm ${SAVEDIRL1}/l1data/l1_5.pal &>/dev/null
NUM1=$((1 + RANDOM % $RNDLVL1))
NUM2=$((1 + RANDOM % $RNDLVL1))
NUM3=$((1 + RANDOM % $RNDLVL1))
NUM4=$((1 + RANDOM % $RNDLVL1))
NUM5=$((1 + RANDOM % $RNDLVL1))
while [ $NUM1 = $NUM2 ]
do
  NUM2=$((1 + RANDOM % $RNDLVL1))
done
while [ $NUM3 = $NUM1 ] || [ $NUM3 = $NUM2 ]
do
  NUM3=$((1 + RANDOM % $RNDLVL1))
done
while [ $NUM4 = $NUM1 ] || [ $NUM4 = $NUM2 ] || [ $NUM4 = $NUM3 ]
do
  NUM4=$((1 + RANDOM % $RNDLVL1))
done
while [ $NUM5 = $NUM1 ] || [ $NUM5 = $NUM2 ] || [ $NUM5 = $NUM3 ] || [ $NUM5 = $NUM4 ]
do
  NUM5=$((1 + RANDOM % $RNDLVL1))
done
cp ${DEVDIR}/palette/l1data/l1_${NUM1}.pal ${SAVEDIRL1}/l1data/l1_1.pal
echo palette/l1data/l1_${NUM1}.pal l1data/l1_1.pal
cp ${DEVDIR}/palette/l1data/l1_${NUM2}.pal ${SAVEDIRL1}/l1data/l1_2.pal
echo palette/l1data/l1_${NUM2}.pal l1data/l1_2.pal
cp ${DEVDIR}/palette/l1data/l1_${NUM3}.pal ${SAVEDIRL1}/l1data/l1_3.pal
echo palette/l1data/l1_${NUM3}.pal l1data/l1_3.pal
cp ${DEVDIR}/palette/l1data/l1_${NUM4}.pal ${SAVEDIRL1}/l1data/l1_4.pal
echo palette/l1data/l1_${NUM4}.pal l1data/l1_4.pal
cp ${DEVDIR}/palette/l1data/l1_${NUM5}.pal ${SAVEDIRL1}/l1data/l1_5.pal
echo palette/l1data/l1_${NUM5}.pal l1data/l1_5.pal
echo -----------------------------------
echo Randomize Level 2 Palette Catacombs
echo -----------------------------------
rm ${SAVEDIRL1}/l2data/l2_1.pal &>/dev/null
rm ${SAVEDIRL1}/l2data/l2_2.pal &>/dev/null
rm ${SAVEDIRL1}/l2data/l2_3.pal &>/dev/null
rm ${SAVEDIRL1}/l2data/l2_4.pal &>/dev/null
rm ${SAVEDIRL1}/l2data/l2_5.pal &>/dev/null
NUM1=$((1 + RANDOM % $RNDLVL2))
NUM2=$((1 + RANDOM % $RNDLVL2))
NUM3=$((1 + RANDOM % $RNDLVL2))
NUM4=$((1 + RANDOM % $RNDLVL2))
NUM5=$((1 + RANDOM % $RNDLVL2))
while [ $NUM1 = $NUM2 ]
do
  NUM2=$((1 + RANDOM % $RNDLVL2))
done
while [ $NUM3 = $NUM1 ] || [ $NUM3 = $NUM2 ]
do
  NUM3=$((1 + RANDOM % $RNDLVL2))
done
while [ $NUM4 = $NUM1 ] || [ $NUM4 = $NUM2 ] || [ $NUM4 = $NUM3 ]
do
  NUM4=$((1 + RANDOM % $RNDLVL2))
done
while [ $NUM5 = $NUM1 ] || [ $NUM5 = $NUM2 ] || [ $NUM5 = $NUM3 ] || [ $NUM5 = $NUM4 ]
do
  NUM5=$((1 + RANDOM % $RNDLVL2))
done
cp ${DEVDIR}/palette/l2data/l2_${NUM1}.pal ${SAVEDIRL1}/l2data/l2_1.pal
echo palette/l2data/l2_${NUM1}.pal l2data/l2_1.pal
cp ${DEVDIR}/palette/l2data/l2_${NUM2}.pal ${SAVEDIRL1}/l2data/l2_2.pal
echo palette/l2data/l2_${NUM2}.pal l2data/l2_2.pal
cp ${DEVDIR}/palette/l2data/l2_${NUM3}.pal ${SAVEDIRL1}/l2data/l2_3.pal
echo palette/l2data/l2_${NUM3}.pal l2data/l2_3.pal
cp ${DEVDIR}/palette/l2data/l2_${NUM4}.pal ${SAVEDIRL1}/l2data/l2_4.pal
echo palette/l2data/l2_${NUM4}.pal l2data/l2_4.pal
cp ${DEVDIR}/palette/l2data/l2_${NUM5}.pal ${SAVEDIRL1}/l2data/l2_5.pal
echo palette/l2data/l2_${NUM5}.pal l2data/l2_5.pal
echo -------------------------------
echo Randomize Level 3 Palette Caves
echo -------------------------------
rm ${SAVEDIRL1}/l3data/l3_1.pal &>/dev/null
rm ${SAVEDIRL1}/l3data/l3_2.pal &>/dev/null
rm ${SAVEDIRL1}/l3data/l3_3.pal &>/dev/null
rm ${SAVEDIRL1}/l3data/l3_4.pal &>/dev/null
rm ${SAVEDIRL1}/l3data/l3_5.pal &>/dev/null
NUM1=$((1 + RANDOM % $RNDLVL3))
NUM2=$((1 + RANDOM % $RNDLVL3))
NUM3=$((1 + RANDOM % $RNDLVL3))
NUM4=$((1 + RANDOM % $RNDLVL3))
NUM5=$((1 + RANDOM % $RNDLVL3))
while [ $NUM1 = $NUM2 ]
do
  NUM2=$((1 + RANDOM % $RNDLVL3))
done
while [ $NUM3 = $NUM1 ] || [ $NUM3 = $NUM2 ]
do
  NUM3=$((1 + RANDOM % $RNDLVL3))
done
while [ $NUM4 = $NUM1 ] || [ $NUM4 = $NUM2 ] || [ $NUM4 = $NUM3 ]
do
  NUM4=$((1 + RANDOM % $RNDLVL3))
done
while [ $NUM5 = $NUM1 ] || [ $NUM5 = $NUM2 ] || [ $NUM5 = $NUM3 ] || [ $NUM5 = $NUM4 ]
do
  NUM5=$((1 + RANDOM % $RNDLVL3))
done
cp ${DEVDIR}/palette/l3data/l3_${NUM1}.pal ${SAVEDIRL1}/l3data/l3_1.pal
echo palette/l3data/l3_${NUM1}.pal l3data/l3_1.pal
cp ${DEVDIR}/palette/l3data/l3_${NUM2}.pal ${SAVEDIRL1}/l3data/l3_2.pal
echo palette/l3data/l3_${NUM2}.pal l3data/l3_2.pal
cp ${DEVDIR}/palette/l3data/l3_${NUM3}.pal ${SAVEDIRL1}/l3data/l3_3.pal
echo palette/l3data/l3_${NUM3}.pal l3data/l3_3.pal
cp ${DEVDIR}/palette/l3data/l3_${NUM4}.pal ${SAVEDIRL1}/l3data/l3_4.pal
echo palette/l3data/l3_${NUM4}.pal l3data/l3_4.pal
cp ${DEVDIR}/palette/l3data/l3_${NUM5}.pal ${SAVEDIRL1}/l3data/l3_5.pal
echo palette/l3data/l3_${NUM5}.pal l3data/l3_5.pal
echo ------------------------------
echo Randomize Level 4 Palette Hell
echo ------------------------------
rm ${SAVEDIRL1}/l4data/l4_1.pal &>/dev/null
rm ${SAVEDIRL1}/l4data/l4_2.pal &>/dev/null
rm ${SAVEDIRL1}/l4data/l4_3.pal &>/dev/null
rm ${SAVEDIRL1}/l4data/l4_4.pal &>/dev/null
rm ${SAVEDIRL1}/l4data/l4_5.pal &>/dev/null
NUM1=$((1 + RANDOM % $RNDLVL4))
NUM2=$((1 + RANDOM % $RNDLVL4))
NUM3=$((1 + RANDOM % $RNDLVL4))
NUM4=$((1 + RANDOM % $RNDLVL4))
NUM5=$((1 + RANDOM % $RNDLVL4))
while [ $NUM1 = $NUM2 ]
do
  NUM2=$((1 + RANDOM % $RNDLVL4))
done
while [ $NUM3 = $NUM1 ] || [ $NUM3 = $NUM2 ]
do
  NUM3=$((1 + RANDOM % $RNDLVL4))
done
while [ $NUM4 = $NUM1 ] || [ $NUM4 = $NUM2 ] || [ $NUM4 = $NUM3 ]
do
  NUM4=$((1 + RANDOM % $RNDLVL4))
done
while [ $NUM5 = $NUM1 ] || [ $NUM5 = $NUM2 ] || [ $NUM5 = $NUM3 ] || [ $NUM5 = $NUM4 ]
do
  NUM5=$((1 + RANDOM % $RNDLVL4))
done
cp ${DEVDIR}/palette/l4data/l4_${NUM1}.pal ${SAVEDIRL1}/l4data/l4_1.pal
echo palette/l4data/l4_${NUM1}.pal l4data/l4_1.pal
cp ${DEVDIR}/palette/l4data/l4_${NUM2}.pal ${SAVEDIRL1}/l4data/l4_2.pal
echo palette/l4data/l4_${NUM2}.pal l4data/l4_2.pal
cp ${DEVDIR}/palette/l4data/l4_${NUM3}.pal ${SAVEDIRL1}/l4data/l4_3.pal
echo palette/l4data/l4_${NUM3}.pal l4data/l4_3.pal
cp ${DEVDIR}/palette/l4data/l4_${NUM4}.pal ${SAVEDIRL1}/l4data/l4_4.pal
echo palette/l4data/l4_${NUM4}.pal l4data/l4_4.pal
cp ${DEVDIR}/palette/l4data/l4_${NUM5}.pal ${SAVEDIRL1}/l4data/l4_5.pal
echo palette/l4data/l4_${NUM5}.pal l4data/l4_5.pal
echo -------------------------------
echo Randomize Level 5 Palette Crypt
echo -------------------------------
NUM1=$((1 + RANDOM % $RNDLVL5))
rm ${SAVEDIRL2}/l5data/l5base.pal &>/dev/null
cp ${DEVDIR}/palette/l5data/l5_${NUM1}.pal ${SAVEDIRL2}/l5data/l5base.pal
echo palette/l5data/l5_${NUM1}.pal l5data/l5base.pal
echo ------------------------------
echo Randomize Level 6 Palette Hive
echo ------------------------------
rm ${SAVEDIRL2}/l6data/l6_1.pal &>/dev/null
rm ${SAVEDIRL2}/l6data/l6_2.pal &>/dev/null
rm ${SAVEDIRL2}/l6data/l6_3.pal &>/dev/null
rm ${SAVEDIRL2}/l6data/l6_4.pal &>/dev/null
rm ${SAVEDIRL2}/l6data/l6_5.pal &>/dev/null
NUM1=$((1 + RANDOM % $RNDLVL6))
NUM2=$((1 + RANDOM % $RNDLVL6))
NUM3=$((1 + RANDOM % $RNDLVL6))
NUM4=$((1 + RANDOM % $RNDLVL6))
NUM5=$((1 + RANDOM % $RNDLVL6))
while [ $NUM1 = $NUM2 ]
do
  NUM2=$((1 + RANDOM % $RNDLVL6))
done
while [ $NUM3 = $NUM1 ] || [ $NUM3 = $NUM2 ]
do
  NUM3=$((1 + RANDOM % $RNDLVL6))
done
while [ $NUM4 = $NUM1 ] || [ $NUM4 = $NUM2 ] || [ $NUM4 = $NUM3 ]
do
  NUM4=$((1 + RANDOM % $RNDLVL6))
done
while [ $NUM5 = $NUM1 ] || [ $NUM5 = $NUM2 ] || [ $NUM5 = $NUM3 ] || [ $NUM5 = $NUM4 ]
do
  NUM5=$((1 + RANDOM % $RNDLVL6))
done
cp ${DEVDIR}/palette/l6data/l6_${NUM1}.pal ${SAVEDIRL2}/l6data/l6_1.pal
echo palette/l6data/l6_${NUM1}.pal l6data/l6_1.pal
cp ${DEVDIR}/palette/l6data/l6_${NUM2}.pal ${SAVEDIRL2}/l6data/l6_2.pal
echo palette/l6data/l6_${NUM2}.pal l6data/l6_2.pal
cp ${DEVDIR}/palette/l6data/l6_${NUM3}.pal ${SAVEDIRL2}/l6data/l6_3.pal
echo palette/l6data/l6_${NUM3}.pal l6data/l6_3.pal
cp ${DEVDIR}/palette/l6data/l6_${NUM4}.pal ${SAVEDIRL2}/l6data/l6_4.pal
echo palette/l6data/l6_${NUM4}.pal l6data/l6_4.pal
cp ${DEVDIR}/palette/l6data/l6_${NUM5}.pal ${SAVEDIRL2}/l6data/l6_5.pal
echo palette/l6data/l6_${NUM5}.pal l6data/l6_5.pal
