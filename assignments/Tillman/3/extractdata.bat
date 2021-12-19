@echo off
for /F "tokens=*" %%A in (urls.txt) do curl -isLk %%A> "data/"%%A.txt