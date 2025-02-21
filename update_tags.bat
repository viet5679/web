@echo off
sqlcmd -S .\SQLEXPRESS -d LouisVuitton -Q "EXEC UpdateProductTagsDaily"
exit