# 使用一个 Node.js 环境作为基础镜像
FROM node:18-slim

# 设置工作目录
WORKDIR /usr/src/app

# 将本地代码复制到 Docker 容器内
COPY . .

# 安装所需的 Node.js 依赖项（如果有 package.json 文件）
# 这里假设你使用了 Cloudflare Workers SDK 或其他库
RUN npm install

# 暴露应用监听的端口
EXPOSE 8080

# 启动应用
CMD ["node", "server.js"]
