@echo off
setlocal
cd /d "%~dp0"
set "DOSBOX=%~dp0data\dosbox-staging-v0.83.0\dosbox.exe"
set "CONF=%~dp0carmen.conf"
if not exist "%DOSBOX%" (
  echo Nao encontrei o DOSBox Staging em:
  echo %DOSBOX%
  echo Extraia o pacote inteiro antes de abrir este arquivo.
  pause
  exit /b 1
)
if not exist "%~dp0carmen\CARMEN.EXE" (
  echo Nao encontrei os arquivos do jogo na pasta carmen.
  echo Extraia o pacote inteiro novamente.
  pause
  exit /b 1
)
start "Carmen San Diego" /wait "%DOSBOX%" --noprimaryconf --conf "%CONF%" --working-dir "%~dp0"
endlocal
