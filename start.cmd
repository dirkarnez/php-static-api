docker build . -t my-php:latest
docker run -it --rm --name my-php -p 80:80 -v "%cd%:/var/www/html" my-php:latest
pause