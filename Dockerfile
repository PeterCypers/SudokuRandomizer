FROM busybox

#adding a user so it does not run as root
RUN adduser -D static
USER static
WORKDIR /home/static

#copy all files and directories to docker image
COPY . . 

#Run the busybox webserver (httpd), verbose on port 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]
