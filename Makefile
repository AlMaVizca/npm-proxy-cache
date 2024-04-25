build:
	-@docker build -t docker.io/almavizca/npm-proxy-cache -f Dockerfile .
	-@podman build -t docker.io/almavizca/npm-proxy-cache -f Dockerfile .
