FROM busybox:1.36

# Create a non-root user to own the files and the server
RUN adduser -D static
USER static
WORKDIR /home/static

# Copy the static website
COPY . .

# Run BusyBox httpd
CMD echo "starting http server..." && busybox httpd -f -v -p 3000