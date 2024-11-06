@echo off
set REPO_URL=https://github.com/kauaaks/CMD-Script
set CLONE_DIR=C:\textee
git clone %REPO_URL% %CLONE_DIR%
cd %CLONE_DIR%
set GIT_USER=kauaaks
set GIT_EMAIL=kaua.mota2@etec.sp.gov.br
git config user.name "%GIT_USER%"
git config user.email "%GIT_EMAIL%"
echo Hostname: %COMPUTERNAME% > hostname.txt
for /f "tokens=2 delims=[]" %%i in ('ping -n 1 %COMPUTERNAME% ^| findstr "["') do echo IP: %%i > ip.txt
git add hostname.txt ip.txt
git commit -m "Adiciona arquivos de hostname e IP"
git push origin main
pause
