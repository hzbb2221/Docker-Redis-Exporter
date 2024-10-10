### 1. 功能说明
使用 Docker 方式部署 Redis-Exporter ，采集 Redis 数据库信息后通过 http 的方式暴露给 Prometheus


</br>

### 2. 环境变量（compose文件）：
REDIS_HOST: Redis服务主机地址   
REDIS_PROT: Redis服务端口   
REDIS_PASSWORD: Redis连接密码    

</br>

### 3. 创建一个redis-exporter容器
```
docker-compose up -d
```
