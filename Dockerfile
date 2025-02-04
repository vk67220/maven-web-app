FROM tomcat:9.0

# Maintainer information
MAINTAINER "vk67220"

# Set the deployment directory
WORKDIR /usr/local/tomcat/webapps/

# Copy WAR file to Tomcat webapps directory
COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

# Expose new Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
