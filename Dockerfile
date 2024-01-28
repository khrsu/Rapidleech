FROM php:7.4-alpine

WORKDIR /root

COPY . .

CMD ["php", "-S", "localhost:8000"]
