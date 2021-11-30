FROM ampersandtarski/prototype-framework:v1.10.3

# Copy Ampersand compiler
COPY --from=ampersandtarski/ampersand:v4.6.0 /bin/ampersand /usr/local/bin
RUN chmod +x /usr/local/bin/ampersand

# Copy the content of the current working directory from which docker was called
COPY . /usr/local/project/

WORKDIR /usr/local/project

# Generate prototype application from folder
RUN ampersand proto Main.adl \
  --proto-dir /var/www \
  --verbose

WORKDIR /var/www

RUN chown -R www-data:www-data data log generics