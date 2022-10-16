download:
	wget https://raw.githubusercontent.com/Stability-AI/stability-sdk/main/src/proto/generation.proto

compile: download
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    generation.proto
