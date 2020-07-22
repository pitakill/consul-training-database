.PHONY: up

image = redis:alpine
config = /usr/local/etc/redis/redis.conf

up: 
	docker run --name redis --rm -v $(PWD)/redis.conf:$(config) -p 6379:6379 $(image) redis-server $(config)
