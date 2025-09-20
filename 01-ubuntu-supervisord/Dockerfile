FROM ubuntu:25.04

# 设置非交互模式
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

# 更换系统源
COPY apt-switch.sh /tmp/apt-switch.sh
RUN chmod +x /tmp/apt-switch.sh
RUN /tmp/apt-switch.sh

# 安装软件
RUN apt update && apt install -y \
    wget \
    curl \
    nginx \
    supervisor \
    openjdk-11-jdk \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

# 验证Java \
RUN java --version

# 验证Nginx
RUN nginx -version

# 验证supervisor
RUN supervisord --version

# 复制supervisor配置文件
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 复制nginx的配置文件
COPY nginx.conf /etc/nginx/sites-available/default

# 声明暴露的端口，通过docker ps或者docker inspect可以查看
EXPOSE 80


# 使用supervisor作为入口点
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
