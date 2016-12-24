@echo off

cd %~dp0 & cd ..\.. & docker-compose exec php ./artisan %*