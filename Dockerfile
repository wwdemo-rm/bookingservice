FROM websphere-liberty:microProfile
COPY src/main/liberty/config/server.xml /config/server.xml
COPY src/main/liberty/config/jvm.options /config/jvm.options
RUN installUtility install  --acceptLicense defaultServer
COPY target/bookingservice-java-1.0.0-SNAPSHOT.war /config/apps/

ENV MONGO_HOST=booking-db
