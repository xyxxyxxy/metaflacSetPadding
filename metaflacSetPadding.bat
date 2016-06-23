@ECHO off
ECHO metaflacSetPadding.bat by xyxxyxxy
ECHO works with flac-1.3.1-win - metaflac.exe
ECHO set padding of all .flac files in this folder and all subfolders to 8 KB
ECHO __________________________________________________
PAUSE

FOR /R %%F IN (*.flac) DO (
ECHO %%F
metaflac --remove --block-type=PADDING --dont-use-padding "%%F"
metaflac --add-padding=8192 "%%F"
)
ECHO __________________________________________________
ECHO metaflacSetPadding.bat finished
PAUSE
