# Script de Automação em Lote

Este script em lote realiza várias operações na unidade C: do sistema, como verificar o volume da unidade, versão do sistema, criar pastas, e gerar logs. Ele foi criado para automação de tarefas administrativas em ambiente Windows.

## Funcionalidades

1. *Verificar Volume e Versão do Sistema*: Exibe o volume da unidade C: e a versão do sistema.
2. *Limpeza de Tela*: Limpa a tela para melhor organização.
3. *Listagem de Arquivos e Pastas*: Lista todos os arquivos e pastas na unidade C:.
4. *Criação de Pastas*: Cria as pastas Huginho, Zezinho e Luizinho na unidade C:.
5. *Criação de Subpastas*: Dentro de cada pasta principal, cria as subpastas Argentina, Brasil e Uruguai.
6. *Verificação de Pastas Criadas*: Verifica se as pastas e subpastas foram criadas corretamente.
7. *Exclusão de Subpastas*: Remove todas as pastas chamadas Argentina.
8. *Criação de Arquivo de Log*: Gera um arquivo log.txt na unidade C: para documentar as ações realizadas.
9. *Cópia do Log para Pastas Criadas*: Faz uma cópia do arquivo log.txt para cada uma das pastas Huginho, Zezinho e Luizinho.

## Como Usar

1. Salve o código do script em um arquivo com a extensão .bat, por exemplo, script.bat.
2. Abra o Prompt de Comando como Administrador.
3. Execute o arquivo .bat para iniciar o processo.

> *Nota:* Certifique-se de executar o script com permissões de administrador para evitar erros em operações que requerem privilégios elevados.

## Estrutura do Código

```batch
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

