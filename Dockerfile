# Use the official MySQL image from the Docker Hub
FROM mysql:8.0

# Set the environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Copy the custom SQL script that will run on container initialization
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306

# Persist data between container restarts
VOLUME /var/lib/mysql

# Start the MySQL service
CMD ["mysqld"]
