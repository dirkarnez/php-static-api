docker build . -t my-php:latest
docker run -it --rm --name my-php -p 81:80 -v "%cd%:/var/www/html" my-php:latest
pause

@REM docker-compose up --build && docker-compose down
@REM pause
