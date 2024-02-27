@echo off
set savedir=Z:\media\SHARE\roms\Proton\Diablo.pc\Saves
set configdir=Z:\media\SHARE\roms\Proton\Diablo.pc\Config
cls
SET /a counter=1
xcopy /T /E palette\zfolders %savedir%\
IF [%1] == [lua] (
  :loop
  SET "param%counter%=%~1"  
  IF DEFINED param%counter% SET /a counter+=1&shift&GOTO loop
  SET /a counter -=1       
)  	
::LUA random needs 28 params
IF NOT %counter%==28 SET param1=gurksaft
echo ----------------------
echo Randomize Town Palette
echo ----------------------
::delete old palette
del %savedir%\levels\towndata\town.pal > nul
IF %param1% == lua (
  set /a num1=%param2%
) ELSE (
  set /a num1=%random% %%5 +1
)
copy palette\towndata\town_%num1%.pal %savedir%\levels\towndata\town.pal > nul
echo palette\towndata\town_%num1%.pal levels\towndata\town.pal
echo ----------------------------------
echo Randomize Level 1 Palette (Church)
echo ----------------------------------
::delete old palette
del %savedir%\levels\l1data\l1_1.pal > nul
del %savedir%\levels\l1data\l1_2.pal > nul
del %savedir%\levels\l1data\l1_3.pal > nul
del %savedir%\levels\l1data\l1_4.pal > nul
del %savedir%\levels\l1data\l1_5.pal > nul
::randomize
IF %param1% == lua (
  set /a num1=%param3%
  set /a num2=%param4%
  set /a num3=%param5%
  set /a num4=%param6%
  set /a num5=%param7%  
) ELSE (
  set /a num1=%random% %%66 +1
  :2again1
  set /a num2=%random% %%66 +1
  if [%num1%] == [%num2%] goto 2again1
  :3again1
  set /a num3=%random% %%66 +1
  if [%num1%] == [%num3%] goto 3again1
  if [%num2%] == [%num3%] goto 3again1
  :4again1
  set /a num4=%random% %%66 +1
  if [%num1%] == [%num4%] goto 4again1
  if [%num2%] == [%num4%] goto 4again1
  if [%num3%] == [%num4%] goto 4again1
  :5again1
  set /a num5=%random% %%66 +1
  if [%num1%] == [%num5%] goto 5again1
  if [%num2%] == [%num5%] goto 5again1
  if [%num3%] == [%num5%] goto 5again1
  if [%num4%] == [%num5%] goto 5again1
)
copy palette\l1data\l1_%num1%.pal %savedir%\levels\l1data\l1_1.pal > nul
echo palette\l1data\l1_%num1%.pal levels\l1data\l1_1.pal
copy palette\l1data\l1_%num2%.pal %savedir%\levels\l1data\l1_2.pal > nul
echo palette\l1data\l1_%num2%.pal levels\l1data\l1_2.pal
copy palette\l1data\l1_%num3%.pal %savedir%\levels\l1data\l1_3.pal > nul
echo palette\l1data\l1_%num3%.pal levels\l1data\l1_3.pal
copy palette\l1data\l1_%num4%.pal %savedir%\levels\l1data\l1_4.pal > nul
echo palette\l1data\l1_%num4%.pal levels\l1data\l1_4.pal
copy palette\l1data\l1_%num5%.pal %savedir%\levels\l1data\l1_5.pal > nul
echo palette\l1data\l1_%num5%.pal levels\l1data\l1_5.pal
echo -------------------------------------
echo Randomize Level 2 Palette (Catacombs)
echo -------------------------------------
::delete old palette
del %savedir%\levels\l2data\l2_1.pal > nul
del %savedir%\levels\l2data\l2_2.pal > nul
del %savedir%\levels\l2data\l2_3.pal > nul
del %savedir%\levels\l2data\l2_4.pal > nul
del %savedir%\levels\l2data\l2_5.pal > nul
::randomize
IF %param1% == lua (
  set /a num1=%param8%
  set /a num2=%param9%
  set /a num3=%param10%
  set /a num4=%param11%
  set /a num5=%param12%  
) ELSE (
  set /a num1=%random% %%74 +1
  :2again2
  set /a num2=%random% %%74 +1
  if [%num1%] == [%num2%] goto 2again2
  :3again2
  set /a num3=%random% %%74 +1
  if [%num1%] == [%num3%] goto 3again2
  if [%num2%] == [%num3%] goto 3again2
  :4again2
  set /a num4=%random% %%74 +1
  if [%num1%] == [%num4%] goto 4again2
  if [%num2%] == [%num4%] goto 4again2
  if [%num3%] == [%num4%] goto 4again2
  :5again2
  set /a num5=%random% %%74 +1
  if [%num1%] == [%num5%] goto 5again2
  if [%num2%] == [%num5%] goto 5again2
  if [%num3%] == [%num5%] goto 5again2
  if [%num4%] == [%num5%] goto 5again2
)
copy palette\l2data\l2_%num1%.pal %savedir%\levels\l2data\l2_1.pal > nul
echo palette\l2data\l2_%num1%.pal levels\l2data\l2_1.pal
copy palette\l2data\l2_%num2%.pal %savedir%\levels\l2data\l2_2.pal > nul
echo palette\l2data\l2_%num2%.pal levels\l2data\l2_2.pal
copy palette\l2data\l2_%num3%.pal %savedir%\levels\l2data\l2_3.pal > nul
echo palette\l2data\l2_%num3%.pal levels\l2data\l2_3.pal
copy palette\l2data\l2_%num4%.pal %savedir%\levels\l2data\l2_4.pal > nul
echo palette\l2data\l2_%num4%.pal levels\l2data\l2_4.pal
copy palette\l2data\l2_%num5%.pal %savedir%\levels\l2data\l2_5.pal > nul
echo palette\l2data\l2_%num5%.pal levels\l2data\l2_5.pal
echo ---------------------------------
echo Randomize Level 3 Palette (Caves)
echo ---------------------------------
::delete old palette
del %savedir%\levels\l3data\l3_1.pal > nul
del %savedir%\levels\l3data\l3_2.pal > nul
del %savedir%\levels\l3data\l3_3.pal > nul
del %savedir%\levels\l3data\l3_4.pal > nul
del %savedir%\levels\l3data\l3_5.pal > nul
::randomize
IF %param1% == lua (
  set /a num1=%param13%
  set /a num2=%param14%
  set /a num3=%param15%
  set /a num4=%param16%
  set /a num5=%param17%  
) ELSE (
  set /a num1=%random% %%58 +1
  :2again3
  set /a num2=%random% %%58 +1
  if [%num1%] == [%num2%] goto 2again3
  :3again3
  set /a num3=%random% %%58 +1
  if [%num1%] == [%num3%] goto 3again3
  if [%num2%] == [%num3%] goto 3again3
  :4again3
  set /a num4=%random% %%58 +1
  if [%num1%] == [%num4%] goto 4again3
  if [%num2%] == [%num4%] goto 4again3
  if [%num3%] == [%num4%] goto 4again3
  :5again3
  set /a num5=%random% %%58 +1
  if [%num1%] == [%num5%] goto 5again3
  if [%num2%] == [%num5%] goto 5again3
  if [%num3%] == [%num5%] goto 5again3
  if [%num4%] == [%num5%] goto 5again3
)
copy palette\l3data\l3_%num1%.pal %savedir%\levels\l3data\l3_1.pal > nul
echo palette\l3data\l3_%num1%.pal levels\l3data\l3_1.pal
copy palette\l3data\l3_%num2%.pal %savedir%\levels\l3data\l3_2.pal > nul
echo palette\l3data\l3_%num2%.pal levels\l3data\l3_2.pal
copy palette\l3data\l3_%num3%.pal %savedir%\levels\l3data\l3_3.pal > nul
echo palette\l3data\l3_%num3%.pal levels\l3data\l3_3.pal
copy palette\l3data\l3_%num4%.pal %savedir%\levels\l3data\l3_4.pal > nul
echo palette\l3data\l3_%num4%.pal levels\l3data\l3_4.pal
copy palette\l3data\l3_%num5%.pal %savedir%\levels\l3data\l3_5.pal > nul
echo palette\l3data\l3_%num5%.pal levels\l3data\l3_5.pal
echo --------------------------------
echo Randomize Level 4 Palette (Hell)
echo --------------------------------
::delete old palette
del %savedir%\levels\l4data\l4_1.pal > nul
del %savedir%\levels\l4data\l4_2.pal > nul
del %savedir%\levels\l4data\l4_3.pal > nul
del %savedir%\levels\l4data\l4_4.pal > nul
del %savedir%\levels\l4data\l4_5.pal > nul
::randomize
IF %param1% == lua (
  set /a num1=%param18%
  set /a num2=%param19%
  set /a num3=%param20%
  set /a num4=%param21%
  set /a num5=%param22%  
) ELSE (
  set /a num1=%random% %%46 +1
  :2again4
  set /a num2=%random% %%46 +1
  if [%num1%] == [%num2%] goto 2again4
  :3again4
  set /a num3=%random% %%46 +1
  if [%num1%] == [%num3%] goto 3again4
  if [%num2%] == [%num3%] goto 3again4
  :4again4
  set /a num4=%random% %%46 +1
  if [%num1%] == [%num4%] goto 4again4
  if [%num2%] == [%num4%] goto 4again4
  if [%num3%] == [%num4%] goto 4again4
  :5again4
  set /a num5=%random% %%46 +1
 if [%num1%] == [%num5%] goto 5again4
 if [%num2%] == [%num5%] goto 5again4
  if [%num3%] == [%num5%] goto 5again4
  if [%num4%] == [%num5%] goto 5again4
)
copy palette\l4data\l4_%num1%.pal %savedir%\levels\l4data\l4_1.pal > nul
echo palette\l4data\l4_%num1%.pal levels\l4data\l4_1.pal
copy palette\l4data\l4_%num2%.pal %savedir%\levels\l4data\l4_2.pal > nul
echo palette\l4data\l4_%num2%.pal levels\l4data\l4_2.pal
copy palette\l4data\l4_%num3%.pal %savedir%\levels\l4data\l4_3.pal > nul
echo palette\l4data\l4_%num3%.pal levels\l4data\l4_3.pal
copy palette\l4data\l4_%num4%.pal %savedir%\levels\l4data\l4_4.pal > nul
echo palette\l4data\l4_%num4%.pal levels\l4data\l4_4.pal
copy palette\l4data\l4_%num5%.pal %savedir%\levels\l4data\l4_5.pal > nul
echo palette\l4data\l4_%num5%.pal levels\l4data\l4_5.pal
echo ---------------------------------
echo Randomize Level 5 Palette (Crypt)
echo ---------------------------------
::delete old palette
del %savedir%\NLevels\l5data\L5Base.PAL > nul
IF %param1% == lua (
  set /a num1=%param23%  
) ELSE (
  set /a num1=%random% %%74 +1
)
copy palette\l5data\l5_%num1%.pal %savedir%\NLevels\l5data\L5Base.PAL > nul
echo palette\l5data\l5_%num1%.pal NLevels\l5data\L5Base.PAL
echo --------------------------------
echo Randomize Level 6 Palette (Hive)
echo --------------------------------
::delete old palette
del %savedir%\NLevels\l6data\l6base1.pal > nul
del %savedir%\NLevels\l6data\l6base2.pal > nul
del %savedir%\NLevels\l6data\l6base3.pal > nul
del %savedir%\NLevels\l6data\l6base4.pal > nul
del %savedir%\NLevels\l6data\l6base5.pal > nul
::randomize
IF %param1% == lua (
  set /a num1=%param24%
  set /a num2=%param25%
  set /a num3=%param26%
  set /a num4=%param27%
  set /a num5=%param28%  
) ELSE (
  set /a num1=%random% %%79 +1
  :2again6
  set /a num2=%random% %%79 +1
  if [%num1%] == [%num2%] goto 2again6
  :3again6
  set /a num3=%random% %%79 +1
  if [%num1%] == [%num3%] goto 3again6
  if [%num2%] == [%num3%] goto 3again6
  :4again6
  set /a num4=%random% %%79 +1
  if [%num1%] == [%num4%] goto 4again6
  if [%num2%] == [%num4%] goto 4again6
  if [%num3%] == [%num4%] goto 4again6
  :5again6
  set /a num5=%random% %%79 +1
  if [%num1%] == [%num5%] goto 5again6
  if [%num2%] == [%num5%] goto 5again6
  if [%num3%] == [%num5%] goto 5again6
  if [%num4%] == [%num5%] goto 5again6
)
copy palette\l6data\l6_%num1%.pal %savedir%\NLevels\l6data\l6base1.pal > nul
echo palette\l6data\l6_%num1%.pal NLevels\l6data\l6base1.pal
copy palette\l6data\l6_%num2%.pal %savedir%\NLevels\l6data\l6base2.pal > nul
echo palette\l6data\l6_%num2%.pal NLevels\l6data\l6base2.pal
copy palette\l6data\l6_%num3%.pal %savedir%\NLevels\l6data\l6base3.pal > nul
echo palette\l6data\l6_%num3%.pal NLevels\l6data\l6base3.pal
copy palette\l6data\l6_%num4%.pal %savedir%\NLevels\l6data\l6base4.pal > nul
echo palette\l6data\l6_%num4%.pal NLevels\l6data\l6base4.pal
copy palette\l6data\l6_%num5%.pal %savedir%\NLevels\l6data\l6base5.pal > nul
echo palette\l6data\l6_%num5%.pal NLevels\l6data\l6base5.pal
IF %param1% == lua (
  echo --------------
  echo LUA random end
  echo --------------  
) ELSE (
  echo ----------------
  echo BATCH random end
  echo ----------------
)
::clear vars
set num1=
set num2=
set num3=
set num4=
set num5=
SET /a counter=1
:clearloop
SET param%counter%=
SET /a counter+=1
IF DEFINED param%counter% GOTO clearloop
SET counter=
start devilutionx.exe --save-dir %savedir% --config-dir %configdir%