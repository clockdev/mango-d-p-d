# mango-d-p-d
We should migrate our database at this point on Docker.

`$ docker-compose run web python /mango/manage.py migrate --noinput`

`$ docker-compose run web python /mango/manage.py createsuperuser`