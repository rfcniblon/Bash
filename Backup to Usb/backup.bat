@echo off
echo Check les disques dur pour savoir lequel est le bon .
set FILENAME=.\text.txt
set DRIVERLIST=F,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z
FOR %%d in (%DRIVERLIST%) do (
FOR /F "delims=" %%f in ('dir /B /S %%d:\%FILENAME%') do (
set LETTER=%%d
IF EXIST "%%d:\%FILENAME%" goto TRAITEMENT
)
)
:TRAITEMENT
echo Fichier trouve dans le lecteur %LETTER% !
echo la sauvegarde a commencer !
echo.
xcopy F:\"text" %LETTER%:\  /E /R /Y /I /D  
rem xcopy C:\"test" J:\tc\"test"  /E /H /R /Y /I /D >>Log.txt   
echo.
echo la sauvegarde est fini !
Echo Appuyez sur une touche pour quitter
pause >nul
