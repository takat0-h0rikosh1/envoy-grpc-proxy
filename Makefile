server:
	cd ./server && go run main.go

client:
	cd ./client && \
		npx webpack --mode=development client.js && \
		yarn static -p 8081

gen-go:
	protoc -I./proto --go_out=proto/go \
		--go-grpc_out=proto/go --go_opt=paths=source_relative \
		./proto/helloworld/helloworld.proto

gen-js:
	protoc -I=./proto ./proto/helloworld/helloworld.pro \
		--js_out=import_style=commonjs:client/genarated \
		--grpc-web_out=import_style=commonjs,mode=grpcwebtext:client/generated

.PHONY: server client
