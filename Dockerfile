FROM java:8-alpine
MAINTAINER blankrain<https://github.com/blankrain>

ADD target/uberjar/dexas.jar /dexas/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/dexas/app.jar"]
