GitLab for multiple container linkage
=============

This image uses the image from `sameersbn / gitlab` but adds the database setup as a script and then running of the app itself as a command. This is useful when using the linking approach of using the DB and redis as separate containers and avoids doing the two docker run commands.

The script populates the database. Its recommended to use an image that allows you to create a database via environmental variables at docker run, like `paintedfox / postgresql` or `panamax / panamax-docker-mysql`, so the db is populated when this script runs.

The CMD launches the gitlab app. It does take a few minutes for it to come up. Use environmental variables that match your DB's creds to ensure it works. 

__Note__ : See the readme on `sameersbn / gitlab` for the detailed instructions.

Example usage:

`docker run --rm --name GITLAB --link DB:mysql --link redis:redisio -p 10080:80 -p 10022:22 -e "DB_USER=bob" -e "DB_PASS=pass@word" -e "DB_NAME=gitlab" -e "GITLAB_PORT=10080" -e "GITLAB_SSH_PORT=10022" centurylinklabs/docker-gitlab`
