cd /d D:\SourceCode\workspace\test-for-docker\spring-boot-maker
call mvn clean package -U -DskipTests
cd /d %~dp0
del *.jar
copy D:\SourceCode\workspace\test-for-docker\spring-boot-maker\target\spring-boot-maker-*.jar spring-boot-maker-*.jar
ren spring-boot-maker-*.jar spring-boot-maker.jar
docker build -t spring-boot-maker .
docker run -d -p 8080:8080 --name spring-boot-maker spring-boot-maker
