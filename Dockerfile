FROM java:8-alpine
MAINTAINER Your Name <you@example.com>

ADD target/uberjar/dexas.jar /dexas/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/dexas/app.jar"]
