# 基于centos node镜像
FROM docker.io/node

# 维护人的信息
LABEL tcly861204 356671808@qq.com

#工作目录
WORKDIR /wwwroot

# 复制文件到容器
ADD app/ /wwwroot

# 安装pm2
RUN npm install -g pm2

WORKDIR /wwwroot

RUN npm install

#开启80端口
EXPOSE 80

# 设置容器启动时执行
CMD ["npm", "start"]