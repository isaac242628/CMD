@echo off
vol c:
ver
cls
dir c:\

mkdir c:\Huginho
mkdir c:\Zezinho
mkdir c:\Luizinho

if exist c:\Huginho echo Pasta Huginho criada com sucesso
if exist c:\Zezinho echo Pasta Zezinho criada com sucesso
if exist c:\Luizinho echo Pasta Luizinho criada com sucesso

for %%p in (Huginho Zezinho Luizinho) do (
    mkdir c:\%%p\Argentina
    mkdir c:\%%p\Brasil
    mkdir c:\%%p\Uruguai
    if exist c:\%%p\Argentina echo Subpasta Argentina criada com sucesso na pasta %%p
    if exist c:\%%p\Brasil echo Subpasta Brasil criada com sucesso na pasta %%p
    if exist c:\%%p\Uruguai echo Subpasta Uruguai criada com sucesso na pasta %%p
)

for %%p in (Huginho Zezinho Luizinho) do (
    rmdir /S /Q c:\%%p\Argentina
    if not exist c:\%%p\Argentina echo Pasta Argentina removida da pasta %%p
)

echo Log de criação de pastas e arquivos > c:\log.txt

for %%p in (Huginho Zezinho Luizinho) do (
    copy c:\log.txt c:\%%p\
)

pause