FROM centos:centos7
EXPOSE 8080
#Don't do this, there are way better way, this is just a quick and dirty way to do it
#Create index file
RUN echo "Welcome to App2" >> /tmp/index.html
#Update perms to make index file writable by everyone
RUN chmod 777 /tmp/index.html
#Change to non-priviledged user
#USER 1001
#Switch directories, run the script, then fire up the python test server
CMD cd /tmp && bash create_index.sh && python -m SimpleHTTPServer 8080
