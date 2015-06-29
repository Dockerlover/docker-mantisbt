# docker-mantisbt
Docker化MantisBT

## 镜像特点

- 2015/6/29 继承基础镜像docker-php

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-mantisbt.git
        cd docker-mantisbt
        tar zxvf /1.2/mantisbt-release-1.2.19.tar.gz /app
        # 修改相应的参数
        docker build -t docker-mantisbt .

- 运行容器

        docker run -d -it --name mantisbt -p 8081:80 \
        -v /var/docker_images/docker-mantisbt/app:/app docker-mantisbt
