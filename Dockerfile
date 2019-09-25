# 基于centos node镜像
FROM docker.io/node
# 维护人的信息
LABEL tcly861204 356671808@qq.com
WORKDIR /wwwroot
VOLUME /wwwroot
# 复制文件到容器
COPY ./app/* /wwwroot
# 安装pm2
RUN npm install -g pm2
#开启80端口
EXPOSE 80
# 设置容器启动时执行
CMD ["pm2-runtime", "app.js", "--watch"]