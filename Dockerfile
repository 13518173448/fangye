FROM maven:3-jdk-8-alpine

# 设置工作区
WORKDIR /usr/src/app

# 拷贝代码并执行maven构建
COPY . /usr/src/app
RUN mvn package

# 设置环境变量与运行命令
ENV PORT 5000
EXPOSE $PORT
CMD [ "sh", "-c", "mvn -Dserver.port=${PORT} spring-boot:run" ]
