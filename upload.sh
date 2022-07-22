# 该脚本用于自动构建docker镜像，然后发布到 docker registry


# 清除构建缓存 【docker system df】【docker system prune --volumes】 【docker builder prune】
# 110.110.110.110是我的docker registry所部署的服务器

# 构建镜像
docker build -t call-test:v1 .
docker tag call-test:v1 110.110.110.110:5000/call-test:v1

# 先登录
docker login --username=admin 110.110.110.110:5000
#输入密码并推送
docker push 110.110.110.110:5000/call-test:v1
