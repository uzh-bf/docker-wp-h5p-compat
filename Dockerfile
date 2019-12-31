FROM bitnami/wordpress:5.3.2-debian-9-r9

# ensure that h5p works correctly
RUN echo "define('H5P_EMBED_URL_ALWAYS_AVAILABLE', true);" >> /opt/bitnami/wordpress/wp-config.php

# allow for ssl encrypted database connection
# see https://stackoverflow.com/questions/29850112/using-amazon-rds-with-wordpress-over-ssl#answer-29995596
# RUN echo "define('MYSQL_CLIENT_FLAGS', MYSQLI_CLIENT_SSL | MYSQLI_CLIENT_SSL_DONT_VERIFY_SERVER_CERT );" >> /opt/bitnami/wordpress/wp-config.php \
#   && echo "define('MYSQLI_CLIENT_FLAGS', MYSQLI_CLIENT_SSL | MYSQLI_CLIENT_SSL_DONT_VERIFY_SERVER_CERT );" >> /opt/bitnami/wordpress/wp-config.php \
#   && echo "define('MYSQL_SSL_CA', '/opt/ca-cert.pem');" >> /opt/bitnami/wordpress/wp-config.php \
#   && echo "define('MYSQLI_SSL_CA', '/opt/ca-cert.pem');" >> /opt/bitnami/wordpress/wp-config.php
