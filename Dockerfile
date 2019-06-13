FROM bitnami/wordpress

RUN echo "define('H5P_EMBED_URL_ALWAYS_AVAILABLE', true);" >> /opt/bitnami/wordpress/wp-config.php
