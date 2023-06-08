# base image
# FROM openjdk:17-oracle
FROM amazoncorretto:17
LABEL authors="keer2345"
# 挂载目录
VOLUME /app
# 创建目录
RUN mkdir -p /app
# 指定路径
WORKDIR /app
# 复制jar文件到路径
COPY ./chatgpt-bootstrap/target/chatgpt-bootstrap.jar /app/chatgpt-bootstrap.jar
# 启动服务
ENV TZ=Asia/Shanghai JAVA_OPTS="-Xms128m -Xmx256m -Djava.security.egd=file:/dev/./urandom"
CMD java -jar chatgpt-bootstrap.jar
