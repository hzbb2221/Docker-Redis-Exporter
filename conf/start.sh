#/bin/sh
/usr/local/redis_exporter/redis_exporter \
	-redis.addr=REDIS_HOST:REDIS_PROT \
	-redis.password=REDIS_PASSWORD \
	-web.listen-address=:9121
