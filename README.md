# Docker PHP Application Skeleton

## Usage

Init

```sh
make init
```

Go to php cli

```sh
make cli
```

Go to mysql cli

```sh
make db
```

Install Laravel

```sh
rm -rf app && mkdir app
docker-compose run --rm php-cli composer create-project laravel/laravel .
docker-compose run --rm php-cli php artisan migrate
```

## TODO

- xdebug
