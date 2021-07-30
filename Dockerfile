FROM wordpress:5.8

# install and enable sendmail extension for mailhog
RUN curl --location --output /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 && \
	chmod +x /usr/local/bin/mhsendmail && \
	printf "# configure mailhog\nsendmail_path = \"/usr/local/bin/mhsendmail --smtp-addr=mailhog:1025 --from=no-reply@localhost.develop\"\nsendmail_from = \"no-reply@localhost.develop\"\n" > /usr/local/etc/php/conf.d/sendmail.ini
