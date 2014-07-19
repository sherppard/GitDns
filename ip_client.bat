@echo off
f:
cd F:\all-tech\source_code\GitDns 

cd C:\Users\weize
D:\"Program Files (x86)"\Git\bin\sh.exe --login -i client.sh

f:
cd F:\all-tech\source_code\GitDns 
copy hosts C:\Windows\System32\drivers\etc\hosts
