@echo off
for /F "tokens=*" %%A in (urls.txt) do curl -ILsk %%A > %%A.txt