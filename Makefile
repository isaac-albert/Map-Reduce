run: build
	@./bin/mapreduce

build:
	@go build -o bin/mapreduce ./cmd/lib


