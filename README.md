# docker-mantisbt
Docker化MantisBT

## 镜像特点

- 2015/6/29 继承基础镜像docker-php

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-mantisbt.git
        cd docker-mantisbt
        # 修改相应的参数
        docker build -t docker-mantisbt .
- 解压mantisbt代码
        cp -R 1.2/. app
        cd app
        tar zxvf mantisbt-release-1.2.19.tar.gz 
        rm -R mantisbt-release-1.2.19.tar.gz

- 运行容器

        docker run -d -it --name mantisbt -p 8081:80 \
        -v /var/docker_images/docker-mantisbt/app:/app docker-mantisbt

- 配置mantisbt

1. 访问http://localhost:8081
2. 设置数据库并安装
3. 修改config.inc

        <?php
        $g_hostname = 'localhost';
        $g_db_type = 'mysql';
        $g_database_name = 'bugtracker';
        $g_db_username = 'root';
        $g_db_password = 'testpass';
        
        //Mantis Email Settings
        $g_administrator_email='liuhong1.happy@163.com';
        $g_webmaster_email='liuhong1.happy@163.com';
        $g_from_email='liuhong1.happy@163.com';
        $g_return_path_email= 'liuhong1.happy@163.com';
        
        $g_use_phpMailer = ON; # 使用 PHPMailer 发送邮件
        $g_phpMailer_method=2;	# PHPMailer 以 SMTP 方式发送 Email
        $g_smtp_host='smtp.163.com';	# SMTP 服务器
        $g_smtp_username = 'liuhong1.happy@163.com';	# 邮箱登录用户名
        $g_smtp_password='xxxx';	# 邮箱登录密码 
                
