@echo off

rem echo "test" > C:\Users\Public\net_map.log
timeout 5
rem -------------------------------------------------------
rem NB. Non vanno utilizzati caratteri speciali nella UNC
rem -------------------------------------------------------


for %%i in (Z Y X W V U T S R Q P O R N M L K J I H G) do (
 if not exist %%i:\ (
   net use %%i: "\\10.169.0.150\Share_Folder" /PERSISTENT:NO
   exit /b
   )
)