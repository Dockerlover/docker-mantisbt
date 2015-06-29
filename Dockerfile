# 基础镜像
FROM docker-php
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID mantisbt
# 复制代码
COPY 1.2/. /tmp
WORKDIR /tmp
RUN tar zxvf mantisbt-release-1.2.19.tar.gz && rm -R mantisbt-release-1.2.19.tar.gz && mv /tmp /app
# 映射代码、日志目录等的数据卷
VOLUME ["/app","/usr/local/apache2/logs","/etc/appche2"]
# 默认暴露80端口
EXPOSE 80
