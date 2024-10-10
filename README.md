### 1. 功能说明
采集redis监控数据

</br>

### 2. 镜像地址
hzbb2221/redis-exporter:v1.48.0

</br>

### 3. 环境变量：
REDIS_HOST: Redis服务主机地址   
REDIS_PROT: Redis服务端口   
REDIS_PASSWORD: Redis连接密码    

</br>

### 4. 创建一个redis-exporter容器
```
docker run -itd --name=redis-exporter \
    --restart=always \
    -p 9121:9121 \
    -e REDIS_HOST=192.168.2.224 \
    -e REDIS_PROT=6379 \
    -e REDIS_PASSWORD=123456 \
    hzbb2221/redis-exporter:v1.48.0
```
