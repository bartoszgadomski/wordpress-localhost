# Run WordPress on localhost (on your local machine)

Use Docker Compose to run WordPress on your local machine. This will start four containers: WordPress, MySQL, PHPMyAdmin and Mailhog (catch all emails - nothing sent from your localhost will reach the real users).

## Prerequisites
1. Install Docker: https://docs.docker.com/get-docker/
2. Update your `hosts` file - add `127.0.0.1 localhost.develop` entry (see: https://www.howtogeek.com/howto/27350/beginner-geek-how-to-edit-your-hosts-file/)

## Instructions
1. Make sure that Docker daemon is running on your local machine.
2. Clone this repository (`git clone https://github.com/bartoszgadomski/wordpress-localhost.git`) and run `cd wordpress-localhost` to enter its directory in your terminal.
3. Run `npm run setup` - this will create `wp-content` directory for your project files.
4. Run `cd wp-content` and clone your project files/repositories here.
5. Go back (`cd ../`) and start the Docker Compose: `docker-compose up`. This will build and start all the containers. If you don't want to see the containers logs, use `docker-compose up -d` instead.
6. Once you've finished your work, but you want to keep your data, stop the containers with Ctrl+C or `docker-compose kill`.
7. If you want to remove this project data, run `docker-compose down`.

### Optional:

1. If you want to run shell inside the WordPress container, run `docker-compose exec wordpress sh`
