# fc00.org-docker

Dockerfile to build a container for the software running [fc00.org](https://github.com/zielmicha/fc00.org)

To run:
* Create a MySQL user and database
* `docker run -d -p 3000:3000 --name fc00 -e 'MYSQL_DATABASE_HOST=mysql' -e 'MYSQL_DATABASE_PORT=3306' -e 'MYSQL_DATABASE_USER=fc00' -e 'MYSQL_DATABASE_PASSWORD=password' -e 'MYSQL_DATABASE_DB=fc00' jacobhenner/fc00.org-docker `
