# envoy-grpc-proxy

envoy as grpc proxy.

## Run

```sh
# envoy start
docker-compose up

# server start
make server

# client start
make client
```

# Other

## code generate from proto

```sh
# gen go proto
make gen-go
# gen js proto
make gen-js
```
