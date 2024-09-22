.PHONY: proto
proto:
		protoc -I orderpb orderpb/order.proto --go_out=./orderpb/ --go_opt=paths=source_relative --go-grpc_out=./orderpb/ --go-grpc_opt=paths=source_relative
		protoc -I userpb userpb/user.proto --go_out=./userpb/ --go_opt=paths=source_relative --go-grpc_out=./userpb/ --go-grpc_opt=paths=source_relative
		protoc -I productpb productpb/product.proto --go_out=./productpb/ --go_opt=paths=source_relative --go-grpc_out=./productpb/ --go-grpc_opt=paths=source_relative
		

.DEFAULT_GOAL := proto