@echo off
echo Recherche du fichier text.txt pour déterminer le répertoire à sauvegarder...
set FILENAME=text.txt
set SOURCE_DIR=
for %%d in (D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) do (
    if exist "%%d:\%FILENAME%" (
        set SOURCE_DIR=%%d:\
        goto CHECK_DESTINATION
    )
)
echo Fichier text.txt introuvable sur aucun disque.
pause
exit /b

:CHECK_DESTINATION
echo Recherche du fichier text_dd.txt pour déterminer la destination de sauvegarde...
set FILENAME=text_dd.txt
set DESTINATION_DIR=
for %%d in (D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) do (
    if exist "%%d:\%FILENAME%" (
        set DESTINATION_DIR=%%d:\
        goto TRAITEMENT
    )
)
echo Fichier text_dd.txt introuvable sur aucun disque.
pause
exit /b

:TRAITEMENT
echo Fichier text.txt trouvé dans %SOURCE_DIR%
echo Destination de sauvegarde : %DESTINATION_DIR%
echo La sauvegarde commence...
echo.
xcopy %SOURCE_DIR% %DESTINATION_DIR% /E /R /Y /I /D 
echo.
echo La sauvegarde est terminée !
echo Appuyez sur une touche pour quitter.
pause >nul
