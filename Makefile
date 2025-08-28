PROTOS_DIR := proto

.PHONY: generate clean
generate:
	cd $(PROTOS_DIR) && protoc -I . \
	  --go_out=. --go_opt=paths=source_relative \
	  --go-grpc_out=. --go-grpc_opt=paths=source_relative \
	  $$(find . -name "*.proto")

clean:
	find . -name "*.pb.go" -delete
