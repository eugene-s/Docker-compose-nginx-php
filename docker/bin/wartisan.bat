@echo off

cd %~dp0 & cd ..\.. & winpty docker-compose exec -T php sh -c "php artisan %*"