docker build -t cancastilho/app-php-docker:0.1 .

docker run -d -p 80:80 cancastilho/app-php-docker:0.1
