FROM tomcat:9.0

# Maintainer information
MAINTAINER "Kastro Kiran V"

# Set the deployment directory
WORKDIR /usr/local/tomcat/webapps/

# Copy WAR file to Tomcat webapps directory
COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

# Change Tomcat default port from 8080 to 9090
RUN sed -i 's/port="8080"/port="9090"/g' /usr/local/tomcat/conf/server.xml

# Expose new Tomcat port
EXPOSE 9090

# Start Tomcat
CMD ["catalina.sh", "run"]
